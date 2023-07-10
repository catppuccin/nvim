# Changelog

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
