lua << EOF
package.loaded["misirlou.palette"] = nil
require("misirlou-fox").colorscheme()
EOF
