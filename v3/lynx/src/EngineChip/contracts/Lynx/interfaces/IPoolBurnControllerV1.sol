// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IPoolBurnControllerV1 {
  /**
   * @notice Check if the contract is a PoolBurnController
   */
  function isPoolBurnController() external view returns (bool);

  /**
   * @notice Inform the PoolBurnController of a burn request
   * param _burner The address of the account that is burning the tokens
   * param _receiver The address of the account that will receive the underlying tokens
   * param _underlyingAmount The amount of underlying tokens that will be given for burning
   * param _burnAmount The amount of tokens that will be burned
   */
  function informBurnRequest(
    address _burner,
    address _receiver,
    uint256 _underlyingAmount,
    uint256 _burnAmount
  ) external returns (bool isPermitted);
}
