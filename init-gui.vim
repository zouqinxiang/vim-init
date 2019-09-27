if has('gui_running') && !exists('g:GuiLoaded')
	if has('win32') || has('win64') 
		set guioptions+=!
        if has("directx")
            set renderoptions=type:directx
        endif
		set guifont=Consolas:h14:cANSI:qDRAFT
        set guifontwide=Microsoft_YaHei_Mono:h14:cANSI:qDRAFT
		autocmd GUIEnter * simalt ~x 
	elseif has('mac') || has('macunix')
		set guifont=Consolas:h16
	else
		"set guifont=Consolas\ 12
		execute 'set guifont=Noto\ Mono\ Regular\ 14,Menlo\ Regular\ 14,Consolas\ Regular\ 14,Courier\ New\ Regular\ 14'
        "set guifontwide=YaHei_Mono_Hybird_Consolas\ 12.5
	endif
endif

if exists('g:GuiLoaded')
	GuiPopupmenu  0
	if has('win32') || has('win64')
		execute 'GuiFont! ' . "Consolas:h14"
	else
		execute 'GuiFont! ' . "Source Code Pro:h14"
	endif 
endif

set guioptions-=m " 隐藏菜单栏 
set guioptions-=T " 隐藏工具栏 
set guioptions-=L " 隐藏左侧滚动条 
set guioptions-=r " 隐藏右侧滚动条 
set guioptions-=b " 隐藏底部滚动条
set guioptions-=R
set guioptions-=l
color gruvbox