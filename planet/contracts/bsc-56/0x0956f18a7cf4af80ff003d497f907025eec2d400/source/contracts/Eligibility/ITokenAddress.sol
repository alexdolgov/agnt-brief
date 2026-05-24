// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface ITokenAddress{
    /**
    * @notice Retrieves the address of the first token in the pair
    * @return _token0 The address of the first token in the pair
    */
    function token0() external view returns (address _token0);

    /**
    * @notice Retrieves the address of the second token in the pair
    * @return _token1 The address of the second token in the pair
    */
    function token1() external view returns (address _token1);

    /**
    * @notice Retrieves the reserve amounts of token0 and token1 in the pair, along with the timestamp of the last block that interacted with the contract
    * @return reserve0 The reserve amount of the first token in the pair
    * @return reserve1 The reserve amount of the second token in the pair
    * @return lastBlockTimestamp The timestamp of the last block that interacted with the contract
    */
    function getReserves() external view returns (uint256 reserve0, uint256 reserve1, uint256 lastBlockTimestamp);

    /**
    * @notice Retrieves the total amounts of token0 and token1 managed by the contract
    * @return total0 The total amount of the first token managed by the contract
    * @return total1 The total amount of the second token managed by the contract
    */
    function getTotalAmounts() external view returns (uint256 total0, uint256 total1);

    /**
    * @notice Returns the total supply of liquidity tokens for the contract
    * @return _totalSupply The total number of liquidity tokens in circulation for this contract
    */
    function totalSupply() external view returns (uint256 _totalSupply);

}