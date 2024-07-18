.PHONY: clean format upgrade build_dev_mobile run_unit lint run_dev_mobile doctor translations freezed apk help

all: lint format run_dev_mobile

help: ## This help dialog
	@IFS=$$'\n' ;\
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//'`); \
	for help_line in $${help_lines[@]}; do \
		IFS=$$'#' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf "%-30s %s\n" $$help_command $$help_info; \
	done

upgrade: clean ## Upgrade dependencies
	@echo "||= Upgrading dependencies"
	@flutter pub upgrade

clean:	## Cleans the project
	@echo "||= Cleaning the project ..."
	@rm -rf pubspec.lock
	@flutter clean

format:	## Formatting the code
	@echo "||= Formatting the code"
	@dart format .

run_unit: ## Runs unit tests
	@echo "||= Running the tests"
	@flutter test ||(echo "Error while running tests "; exit 1)

build_dev_mobile: clean run_unit ## Builds the apk in dev
	@echo "||= Building the app"
	@flutter build apk --flavor dev

run: ## Runs the mobile application in dev
	@echo "||= Running the app"
	@flutter run 

lint: ## Lints the code
	@echo "||= Verifying code..."
	@dart analyze . || (echo  "Lint error"; exit 1)

freezed: ## Generating freezed files
	@echo "||=Generating freezed code files"
	@flutter pub run build_runner build --delete-conflicting-outputs

translations: ## Generate localization helper file
	@echo "||= Generating easy_localization translation helper file"
	@flutter pub run easy_localization:generate -S "assets/translations" -O "lib/translations" -o "locale_keys.g.dart" -f keys

doctor: ## Run flutter doctor
	@echo "||= Running flutter doctor"
	@flutter doctor
apk: ## Build a release apk
	@echo  "||= Building a release apk"
	@flutter build apk --split-per-abi