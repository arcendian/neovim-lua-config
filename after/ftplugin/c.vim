if executable('clang-format')
    setlocal formatprg=clang-format\ -
    setlocal formatexpr=
endif
