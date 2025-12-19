lua << EOF
package.loaded["misirlou.palette"] = nil
require("misirlou-bl").colorscheme()
EOF
