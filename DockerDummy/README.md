# create a docker dummy with "echo" as the ENTRYPOINT
docker build -t example .
# --rm easy the docker when stop 
docker run --rm -t example Hello

** .dockerignore **
.DS_Store
node_modules/
dist/
npm-debug.log*
yarn-debug.log*
yarn-error.log*
test/unit/coverage
test/e2e/reports
selenium-debug.log

# Editor directories and files
.idea
*.suo
*.ntvs*
*.njsproj
*.sln
*.swp
