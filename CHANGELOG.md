# Changelog

## [1.5.0](https://github.com/catppuccin/nvim/compare/v1.4.0...v1.5.0) (2023-09-29)


### Features

* add kitty detection ([d3da439](https://github.com/catppuccin/nvim/commit/d3da43907d1896ba3e68a62f18820d1d12574317))
* add ufo integration ([1f53686](https://github.com/catppuccin/nvim/commit/1f536869b1a2ca1710fc892db84d7e8bbc6ad8d9))
* add workaround for kitty transparent issue ([#579](https://github.com/catppuccin/nvim/issues/579)) ([f36fa5c](https://github.com/catppuccin/nvim/commit/f36fa5cdce162450df88298a16631eeed16b68a3))
* **compile:** use indexed cmd ([85e9360](https://github.com/catppuccin/nvim/commit/85e93601e0f0b48aa2c6bbfae4d0e9d7a1898280))
* **illuminate:** enabled by default and optional lsp option ([5b44baa](https://github.com/catppuccin/nvim/commit/5b44baa4aff0ff45c042620ee960d283a79807a1)), closes [#571](https://github.com/catppuccin/nvim/issues/571)
* **indent-blankline:** update to v3, add scope color ([#585](https://github.com/catppuccin/nvim/issues/585)) ([f04336b](https://github.com/catppuccin/nvim/commit/f04336ba4a2400ee2c5250068b39541652c0962f))
* **integrations:** add NormalNvim ([0e3c128](https://github.com/catppuccin/nvim/commit/0e3c128eea8a7de692778d52b8429817df5c9040)), closes [#580](https://github.com/catppuccin/nvim/issues/580)
* **integrations:** add notifier.nvim ([d029098](https://github.com/catppuccin/nvim/commit/d029098e124f6201a07298c0c1c499ed8d5aef76)), closes [#574](https://github.com/catppuccin/nvim/issues/574)
* **lib:** soft deprecate highlighter ([8202348](https://github.com/catppuccin/nvim/commit/82023485fec1703d6f700a4b2a92fd431d4882f4))
* **syntax:** respect style guide part 3 ([#576](https://github.com/catppuccin/nvim/issues/576)) ([81096ca](https://github.com/catppuccin/nvim/commit/81096cabe67f360acb06d64c0f7db8dd840afeba))


### Bug Fixes

* **coc:** improve inlay hints ([#582](https://github.com/catppuccin/nvim/issues/582)) ([3d9a5ed](https://github.com/catppuccin/nvim/commit/3d9a5ed556e289bce6c1fb0af89ec838360641b2))
* **editor:** invisible fold with transparent ([1c15c5e](https://github.com/catppuccin/nvim/commit/1c15c5e51a998c9198d63c6d2b75e9d1e4a84541)), closes [#577](https://github.com/catppuccin/nvim/issues/577)
* **template:** broken tmux italic gist link ([128e0d2](https://github.com/catppuccin/nvim/commit/128e0d27946491da979e2e04f5a4acf330ccdefd))
* **treesitter:** invalid string in type builtin ([135f9b0](https://github.com/catppuccin/nvim/commit/135f9b01386fa18da6d75c16ceb83e1aa3669430))
* **ufo:** use folded ellipsis ([846388d](https://github.com/catppuccin/nvim/commit/846388d137590e653390ce2f84fea5351a7516ac))
* **vim:** add vim.env index ([1786287](https://github.com/catppuccin/nvim/commit/17862877792db104d48c3260aec0ace92d55f863))


### Performance Improvements

* **compile:** reduce else statement ([a937d54](https://github.com/catppuccin/nvim/commit/a937d546f4783a1ff67f84043d2d7871ad4ecd83))

## [1.4.0](https://github.com/catppuccin/nvim/compare/v1.3.0...v1.4.0) (2023-08-21)


### Features

* add ability to enable/disable all integrations by default ([#552](https://github.com/catppuccin/nvim/issues/552)) ([737f60a](https://github.com/catppuccin/nvim/commit/737f60a3a25c79d9bb9574092f6c6c958a3d747a))
* add flash.nvim integration ([#550](https://github.com/catppuccin/nvim/issues/550)) ([381eddd](https://github.com/catppuccin/nvim/commit/381edddc4ad12126cfa7276818bca07c3d5606ed))
* enable neogit by default ([91f9f6f](https://github.com/catppuccin/nvim/commit/91f9f6fb413caff2bd06e326ec174deee1c1b7a9)), closes [#568](https://github.com/catppuccin/nvim/issues/568)
* **flash:** enable by default ([#551](https://github.com/catppuccin/nvim/issues/551)) ([a84ee18](https://github.com/catppuccin/nvim/commit/a84ee1848bfac4601771805396552bdbaa0a0e91))
* **gitsigns:** Support GitSignsCurrentLineBlame highlights ([#567](https://github.com/catppuccin/nvim/issues/567)) ([3fdd394](https://github.com/catppuccin/nvim/commit/3fdd3942567503d23b65ccc21e7d7757334defd5))
* **lspsaga:** support v0.3 ([#543](https://github.com/catppuccin/nvim/issues/543)) ([3ffd2f5](https://github.com/catppuccin/nvim/commit/3ffd2f511f3dc6c01258923d7170ccaf1445634b))
* **lspsaga:** upstream new hl groups ([#544](https://github.com/catppuccin/nvim/issues/544)) ([e0dd3f9](https://github.com/catppuccin/nvim/commit/e0dd3f9bb1513c98ab4ef9404ea26e18babf858a))
* **neogit:** update highlights ([#545](https://github.com/catppuccin/nvim/issues/545)) ([#549](https://github.com/catppuccin/nvim/issues/549)) ([371430f](https://github.com/catppuccin/nvim/commit/371430f32f2637d2dd5796399b3982d4cada61d8))
* **telescope:** make nvchad style great again ([#538](https://github.com/catppuccin/nvim/issues/538)) ([51961da](https://github.com/catppuccin/nvim/commit/51961da41e8189ca6f9ed73f37dfa83087b4e65c))
* **treesitter-context:** add color for normal background ([#564](https://github.com/catppuccin/nvim/issues/564)) ([b1caff9](https://github.com/catppuccin/nvim/commit/b1caff988fb395c0aae585cecff58b1ffa0a21c6))


### Bug Fixes

* don't highlight fg of `PmenuSel` ([#554](https://github.com/catppuccin/nvim/issues/554)) ([6425df1](https://github.com/catppuccin/nvim/commit/6425df128d46f2db2cccf9aa7a66ca2823c1d153))
* highlight NonText characters ([#547](https://github.com/catppuccin/nvim/issues/547)) ([bfe91df](https://github.com/catppuccin/nvim/commit/bfe91dfb3a19ffd4445e43611fcde68acbb3fed4))
* **integration_default:** hotfix for [#559](https://github.com/catppuccin/nvim/issues/559) ([4913a8b](https://github.com/catppuccin/nvim/commit/4913a8b47554a89a71ed44da39fc1f6e5c2841c3))
* **integration_default:** override `enabled` key only if integration has one ([#559](https://github.com/catppuccin/nvim/issues/559)) ([9709f82](https://github.com/catppuccin/nvim/commit/9709f8251a40e874238d6f9436cf4fba654b60e1))
* **noice:** set background blend to 0 for mini popups ([#556](https://github.com/catppuccin/nvim/issues/556)) ([2d50a4e](https://github.com/catppuccin/nvim/commit/2d50a4e3aecffea4144801bb3c0a3cf7b88fdd6b))
* **nvim-window-picker:** missing table keys ([#569](https://github.com/catppuccin/nvim/issues/569)) ([b9e4dae](https://github.com/catppuccin/nvim/commit/b9e4dae160bf9bc28d4ceb6d29a7e0134b107724))
* **options:** disable deprecated ts_rainbow and ts_rainbow2 by default ([096385d](https://github.com/catppuccin/nvim/commit/096385dd024ecd1332659916fd7f09d7d18d7374))
* **telescope:** keep consistency between the two styles ([#540](https://github.com/catppuccin/nvim/issues/540)) ([dfbc8e2](https://github.com/catppuccin/nvim/commit/dfbc8e2b478a65104d34556698067f2d40f1c227))
* **telescope:** respect transparency ([#542](https://github.com/catppuccin/nvim/issues/542)) ([f36af06](https://github.com/catppuccin/nvim/commit/f36af062e3242f333b12fe9b730053fdda36e000))
* **treesitter:** avoid possible nil ([17ae783](https://github.com/catppuccin/nvim/commit/17ae783b88bb7ae73dc004370473138d9d43ee46))
* **types:** make all options besides nested `enabled` optional ([#565](https://github.com/catppuccin/nvim/issues/565)) ([490078b](https://github.com/catppuccin/nvim/commit/490078b1593c6609e6a50ad5001e7902ea601824))

## [1.3.0](https://github.com/catppuccin/nvim/compare/v1.2.0...v1.3.0) (2023-07-10)


### Features

* auto-sync upstream palettes ([#507](https://github.com/catppuccin/nvim/issues/507)) ([8426d3b](https://github.com/catppuccin/nvim/commit/8426d3bfd55f4dc68ae451a82927d2ff88e47e95))
* **debug:** add auto compile on save ([c9cc5a9](https://github.com/catppuccin/nvim/commit/c9cc5a997f1dae3f35b4bdd62f35958fee363ab4))
* **dropbar:** add new highlight groups ([4f22a1e](https://github.com/catppuccin/nvim/commit/4f22a1e78460ae06e78a1085a8e0e6cc8027aef2)), closes [#503](https://github.com/catppuccin/nvim/issues/503)
* **integration:** add dropbar.nvim ([#499](https://github.com/catppuccin/nvim/issues/499)) ([e86aeb8](https://github.com/catppuccin/nvim/commit/e86aeb8ca0f03e97192074fba9dc6c836f953a83))
* **integrations:** accept both boolean and table config ([#534](https://github.com/catppuccin/nvim/issues/534)) ([f0b947a](https://github.com/catppuccin/nvim/commit/f0b947ab8cfdb9ca7ba6230b30bbc1ed48dd30a1))
* **integrations:** add rainbow_delimiters.nvim support ([#530](https://github.com/catppuccin/nvim/issues/530)) ([cc8d3ab](https://github.com/catppuccin/nvim/commit/cc8d3abc944d78cb6bf2a4cc88871ab383c4da62))
* **markdown:** add rainbow headlines ([#493](https://github.com/catppuccin/nvim/issues/493)) ([cc517bd](https://github.com/catppuccin/nvim/commit/cc517bdcb66a0f8dee90bab10ccdd651fa967bbe))
* **native_lsp:** add ability to disable background for inlay hints ([#518](https://github.com/catppuccin/nvim/issues/518)) ([b032ced](https://github.com/catppuccin/nvim/commit/b032cedb90c42a7bfbfbe2f91479505330f4a396))
* **native_lsp:** support inlay hints ([#516](https://github.com/catppuccin/nvim/issues/516)) ([d32b0bb](https://github.com/catppuccin/nvim/commit/d32b0bb5b1033920de5026e326869838aba856ee))
* **navic:** change text color ([278bfeb](https://github.com/catppuccin/nvim/commit/278bfeb61bd627dc2a8885180a0441a1ebe65a41))
* **semantic_tokens:** add some lsp semantic tokens ([#512](https://github.com/catppuccin/nvim/issues/512)) ([506a4aa](https://github.com/catppuccin/nvim/commit/506a4aa13443e0104ea49b99947cc09488d0791d))
* **telescope:** telescope flat style support ([#521](https://github.com/catppuccin/nvim/issues/521)) ([fc73faa](https://github.com/catppuccin/nvim/commit/fc73faa37bda393e3c4f846fb3e810a6ac8aae16))
* **types:** add type annotations ([#495](https://github.com/catppuccin/nvim/issues/495)) ([1d3eda1](https://github.com/catppuccin/nvim/commit/1d3eda15703ba70f57e94e6451db55914ff7017f))
* **workflows:** auto-sync upstream palettes ([e9fbeec](https://github.com/catppuccin/nvim/commit/e9fbeec106562475e82bae79304b6a421eee73f3))


### Bug Fixes

* calling palette before setup ([841d8ab](https://github.com/catppuccin/nvim/commit/841d8abf3be39de833d95a592a1fbbb1b9851296))
* **feline:** disable lsp status on nightly ([#510](https://github.com/catppuccin/nvim/issues/510)) ([9aaf5b4](https://github.com/catppuccin/nvim/commit/9aaf5b4ce5cd256695d8bbddb65869d19919abde))
* **feline:** use new `vim.lsp.status()` method ([#509](https://github.com/catppuccin/nvim/issues/509)) ([57ee09d](https://github.com/catppuccin/nvim/commit/57ee09dd532bd442b53d65c2b2f35550960981ed))
* **lsp:** do not link `LspInlayHint` to `Comment` directly ([#517](https://github.com/catppuccin/nvim/issues/517)) ([5dc566c](https://github.com/catppuccin/nvim/commit/5dc566c4206f383657d67500253559d3be82c421))
* **mapper:** remove unnecessary globals ([#529](https://github.com/catppuccin/nvim/issues/529)) ([c75562c](https://github.com/catppuccin/nvim/commit/c75562cbc954136f279ced91661251543b6f2a20))
* **native_lsp:** boolean logic ([#526](https://github.com/catppuccin/nvim/issues/526)) ([8d02781](https://github.com/catppuccin/nvim/commit/8d02781a638123394f9bc160aad47a9560a113f9))
* **tests:** shadowing variable ([15043d3](https://github.com/catppuccin/nvim/commit/15043d363729f1ef20e615c41bbd8b7e92c1453e))
* **treesitter_context:** underline content if `transparent_background` is true ([#519](https://github.com/catppuccin/nvim/issues/519)) ([6ecc158](https://github.com/catppuccin/nvim/commit/6ecc158dbf365d2cd290b58993296c42b3111965))
* **which-key:** wrong separator highlight group ([d438c01](https://github.com/catppuccin/nvim/commit/d438c0141609338140b18363a9a1e8eb8bb17130))
* **workflows:** stylua format ([2df7036](https://github.com/catppuccin/nvim/commit/2df7036c5c303c9184869936e40ca18935e4afcb))
