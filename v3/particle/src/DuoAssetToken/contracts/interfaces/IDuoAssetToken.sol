// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";

interface IDuoAssetToken is IERC20 {
    event Minting(address indexed _to, address indexed _minter, uint256 _amount);
    event Burning(address indexed _to, address indexed _burner, uint256 _amount);

    function burn(uint256 amount) external;

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    function burnFrom(address account, uint256 amount) external;

    function mint(address account, uint256 amount) external;
}
