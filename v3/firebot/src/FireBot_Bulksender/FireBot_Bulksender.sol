// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IERC20 {
    function transferFrom(address from, address to, uint256 value) external;
}

interface IERC721 {
    function transferFrom(address from, address to, uint256 id) external;
}

contract FireBot_Bulksender{
    function bulksendERC20(IERC20 token, address[] memory to, uint256[] memory values) public {
        require(to.length == values.length);
        for (uint256 i = 0; i < to.length; i++) {
            token.transferFrom(msg.sender, to[i], values[i]);
        }
    }

    function bulksendERC721(IERC721 token, address[] memory to, uint256[] memory ids) public {
        require(to.length == ids.length);
        for (uint256 i = 0; i < to.length; i++) {
            token.transferFrom(msg.sender, to[i], ids[i]);
        }
    }
}