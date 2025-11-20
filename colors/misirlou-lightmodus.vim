lua << EOF
package.loaded["misirlou.palette"] = nil
require("misirlou-lightmodus").colorscheme()
EOF
