return {
  'p00f/clangd_extensions.nvim',
  opts = {
    inlay_hints = {
      inline = false,
    },
    ast = {
      --These require codicons (https://github.com/microsoft/vscode-codicons)
      role_icons = {
        type = '',
        declaration = '',
        expression = '',
        specifier = '',
        statement = '',
        ['template argument'] = '',
      },
      kind_icons = {
        Compound = '',
        Recovery = '',
        TranslationUnit = '',
        PackExpansion = '',
        TemplateTypeParm = '',
        TemplateTemplateParm = '',
        TemplateParamObject = '',
      },
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
