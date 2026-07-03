import { defineConfig } from 'vitepress';

// Published as a GitHub Pages project site at /dotfiles/.
export default defineConfig({
  title: 'felippemauricio/dotfiles',
  description:
    'Sensible developer defaults for macOS on Apple Silicon — one command sets up Homebrew, Oh My Zsh and the Node and Python toolchains.',
  lang: 'en-AU',
  base: '/dotfiles/',
  cleanUrls: true,
  lastUpdated: true,
  // Header dark/light switch that follows the OS preference on first visit,
  // then remembers the visitor's choice.
  appearance: true,
  head: [['meta', { name: 'theme-color', content: '#3fb950' }]],

  themeConfig: {
    nav: [
      { text: 'Guide', link: '/guide/getting-started' },
      { text: 'Brewfile', link: '/reference/brewfile' },
      { text: 'GitHub', link: 'https://github.com/felippemauricio/dotfiles' },
    ],

    sidebar: [
      {
        text: 'Getting Started',
        items: [
          { text: 'What & why', link: '/guide/getting-started' },
          { text: 'Installation', link: '/guide/installation' },
        ],
      },
      {
        text: 'Guides',
        items: [
          { text: 'What gets installed', link: '/guide/what-gets-installed' },
          { text: 'The install scripts', link: '/guide/scripts' },
          { text: 'Version managers', link: '/guide/version-managers' },
        ],
      },
      {
        text: 'Reference',
        items: [{ text: 'Customising the Brewfile', link: '/reference/brewfile' }],
      },
    ],

    socialLinks: [
      { icon: 'github', link: 'https://github.com/felippemauricio/dotfiles' },
      { icon: 'linkedin', link: 'https://www.linkedin.com/in/felippemauricio/' },
    ],

    footer: {
      message: 'Released under the MIT License.',
      copyright:
        '© 2019-present <a href="https://www.linkedin.com/in/felippemauricio/">Felippe Maurício</a>',
    },

    search: { provider: 'local' },
  },
});
