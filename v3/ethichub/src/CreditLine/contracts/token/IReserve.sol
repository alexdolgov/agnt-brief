// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.28;

interface IReserve {
    event Transfer(address token, address indexed to, uint256 amount);
    event TokensSwept(address token, address indexed to, uint256 amount);
    event TokenAdded(address token);
    event TokenRemoved(address token);

    error TokenNonManaged(address token);
    error TokenManaged(address token);

    function balance(address _token) external view returns (uint256);
    function transfer(address _token, address _to, uint256 _value) external;
    function addToken(address _token) external;
    function removeToken(address _token) external;
    function sweepTokens(address _token, address _to) external;
}
