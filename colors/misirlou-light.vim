lua << EOF
package.loaded["misirlou.palette"] = nil
require("misirlou-light").colorscheme()
EOF
