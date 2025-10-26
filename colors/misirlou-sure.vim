lua << EOF
package.loaded["misirlou.palette"] = nil
require("misirlou-sure").colorscheme()
EOF
