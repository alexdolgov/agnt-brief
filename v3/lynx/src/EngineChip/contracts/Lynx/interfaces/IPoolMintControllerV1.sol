// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

interface IPoolMintControllerV1 {
  /**
   * @notice Check if the contract is a PoolMintController
   */
  function isPoolMintController() external view returns (bool);

  /**
   * @notice Inform the PoolMintController of a mint request
   * param _minter The address of the account that is minting the tokens
   * param _to The address of the account that is minting the tokens
   * param _underlyingAmount The amount of underlying tokens that were taken for minting
   * param _mintAmount The amount of tokens that will be minted
   */
  function informMintRequest(
    address _minter,
    address _to,
    uint256 _underlyingAmount,
    uint256 _mintAmount
  ) external returns (bool isPermitted);
}
