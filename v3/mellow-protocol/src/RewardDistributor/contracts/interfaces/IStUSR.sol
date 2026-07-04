// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface IStUSR {

    event TransferUnderlying(address indexed _from, address indexed _to, uint256 _value);
    event Deposit(address indexed _sender, address indexed _receiver, uint256 _usrAmount, uint256 _shares);
    event Withdraw(address indexed _sender, address indexed _receiver, uint256 _usrAmount, uint256 _shares);

    error InvalidUnderlyingTokenDecimals();

    function transferShares(address _to, uint256 _shares) external returns (bool isSuccess);

    function transferSharesFrom(address _from, address _to, uint256 _shares) external returns (bool isSuccess);

    function deposit(uint256 _usrAmount, address _receiver) external;

    function deposit(uint256 _usrAmount) external;

    function depositWithPermit(
        uint256 _usrAmount,
        address _receiver,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external;

    function depositWithPermit(
        uint256 _usrAmount,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external;

    function withdraw(uint256 _usrAmount, address _receiver) external;

    function withdraw(uint256 _usrAmount) external;

    function withdrawAll() external;

    function totalShares() external view returns (uint256 shares);

    function totalSupply() external view returns (uint256 usrAmount);

    function sharesOf(address _account) external view returns (uint256 shares);

    function convertToShares(uint256 _usrAmount) external view returns (uint256 shares);

    function convertToUSR(uint256 _shares) external view returns (uint256 usrAmount);

    function previewDeposit(uint256 _usrAmount) external view returns (uint256 shares);

    function previewWithdraw(uint256 _usrAmount) external view returns (uint256 shares);
}
