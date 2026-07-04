// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.30;

interface IPlayerContracts {

    //Errors.
    error PriceCannotBeZero();
    error NumberOfMatchesCannotBeZero();
    error UserCannotBeZeroAddress();
    error PlayerIdCannotBeZero();
    error ZeroAddress();
    error TokenNotSupported();
    error TokenAlreadySupported();
    error TokenNotFound();

    //Events.
    event ContractRenewed(address indexed _user, uint256 indexed _playerId, uint256 _price, uint256 _numberOfMatches, address indexed _paymentToken);
    event PaymentTokenAdded(address indexed _tokenAddress, string _tokenSymbol);
    event PaymentTokenRemoved(address indexed _tokenAddress);
    event TreasurySet(address indexed _newTreasury);

    //Functions.
    function renewContract(address _user, uint256 _playerId, uint256 _price, uint256 _numberOfMatches, address _paymentToken) external;
    function addPaymentToken(address _tokenAddress, string calldata _tokenSymbol) external;
    function removePaymentToken(address _tokenAddress) external;
    function setTreasury(address _newTreasury) external;
    function isTokenSupported(address _tokenAddress) external view returns (bool);
    function getSupportedTokens() external view returns (address[] memory);
}