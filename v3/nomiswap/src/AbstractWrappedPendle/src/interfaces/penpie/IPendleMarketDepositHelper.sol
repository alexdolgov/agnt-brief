// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

interface IPendleMarketDepositHelper {

    function balance(address _market, address _address) external view returns (uint256);
    function depositMarket(address _market, uint256 _amount) external;
    function depositMarketFor(address _market, address _for, uint256 _amount) external;
    function withdrawMarket(address _market, uint256 _amount) external;
    function masterpenpie() external view returns (address);
    function pendleStaking() external view returns (address);
    function poolInfo(address) external view returns (address rewarder, bool isActive);

}
