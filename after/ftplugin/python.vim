if executable('black')
    setlocal formatprg=black\ -q\ -
    setlocal formatexpr=
endif
