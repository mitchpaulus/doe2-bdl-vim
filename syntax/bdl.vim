" Vim syntax file
" Language:	   BDL (Building Description Language)
" Maintainer:  Mitchell T. Paulus
" Last Change: 2022-02-17
" Remark:      Input files for DOE-2 Building Energy Simulations

" See 44.12 Portable syntax file layout

if exists("b:current_syntax")
    echom "Exited early"
    echom b:current_syntax
    finish
endif

" See vim help Section 44.9. This is how it is recommended to
" include another syntax file

syntax iskeyword @,48-57,_,-,192-255,@-@

syntax keyword BdlKeyword INPUT TITLE DIAGNOSTIC ABORT RUN-PERIOD SCHEDULE WEEK-SCHEDULE DAY-SCHEDULE
syntax keyword BdlKeyword SITE-PARAMETERS BUILD-PARAMETERS LAYERS CONSTRUCTION GLASS-TYPE SPACE EXTERIOR-WALL ROOF WINDOW DOOR INTERIOR-WALL UNDERGROUND-WALL UNDERGROUND-FLOOR LOADS-REPORT
syntax keyword BdlKeyword SYSTEM ZONE DAY-RESET-SCH RESET-SCHEDULE SYSTEMS-REPORT
syntax keyword BdlKeyword ELEC-METER FUEL-METER MASTER-METERS PUMP CIRCULATION-LOOP BOILER CHILLER HEAT-REJECTION DW-HEATER
syntax keyword BdlKeyword UTILITY-RATE BLOCK-CHARGE UTILTIY-RATE ECONOMICS-REPORT

syntax region BdlString start=/"/ end=/"/
syntax region BdlComment start=/\$/ end=/\$/

highlight link BdlKeyword Keyword
highlight link BdlString String
highlight link BdlComment Comment

" I like the italics and light gray works for me.
" highlight NeobemComment cterm=italic ctermfg=8 gui=italic guifg=LightGray

let b:current_syntax = "bdl"
