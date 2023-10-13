default: prebuild

all: prebuild clean

prebuild:
	npm install
	npm run tailwind-build
	
clean: clean-prebuild clean-jekyll

clean-prebuild:
	rm package-lock.json
	rm -rf node_modules/

clean-jekyll:
	rm -rf .jekyll-cache/
	rm -rf _site/
	rm -rf build/