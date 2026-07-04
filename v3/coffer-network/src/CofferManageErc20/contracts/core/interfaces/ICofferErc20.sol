// SPDX-License-Identifier: MIT

pragma solidity =0.8.28;

import "./IOwnerable.sol";
import "./IPausable.sol";
import "./IFreezable.sol";

interface ICofferErc20 is IOwnerable, IPausable, IFreezable {
    // Errors
    error ErrorInsufficientBalance(address addr, uint256 available, uint256 required);
    error ErrorInsufficientAllowance(address addr, address spender, uint256 available, uint256 required);

    // ERC20 Events
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    // ERC20 Info
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);

    // Erc20 Data
    function totalSupply() external view returns (uint256);
    function balanceOf(address _owner) external view returns (uint256);
    function allowance(address _owner, address _spender) external view returns (uint256);

    // Erc20 Functions
    function transfer(address _to, uint256 _value) external returns (bool);
    function transferFrom(address _from, address _to, uint256 _value) external returns (bool);
    function approve(address _spender, uint256 _value) external returns (bool);
    function increaseAllowance(address _spender, uint256 _value) external returns (bool);
    function decreaseAllowance(address _spender, uint256 _value) external returns (bool);
}
