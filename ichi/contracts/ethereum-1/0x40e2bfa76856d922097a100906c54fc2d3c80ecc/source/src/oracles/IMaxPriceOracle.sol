
// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;

interface IMaxPriceOracle {

    function chainlinkOracles(address token) external view returns(address oracle);
    function minIchiPrice() external view returns(uint256);

    function read(address token) external view returns (uint256 maxPrice);

    function setMinIchiPrice(uint256 _minIchiPrice) external;
    function registerOracle(address _token, address _oracle) external;

    event SetMinIchiPrice(
        address indexed sender, 
        uint256 minIchiPrice
    );

    event RegisterOracle(
        address indexed sender, 
        address token,
        address oracle
    );
}