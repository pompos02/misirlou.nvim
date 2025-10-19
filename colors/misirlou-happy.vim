lua << EOF
package.loaded["misirlou.palette"] = nil
require("misirlou-happy").colorscheme()
EOF
