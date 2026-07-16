// SPDX-License-Identifier: AGPL-3.0-only

pragma solidity >=0.8.0;

import {IERC4626} from '../../../base/interfaces/IERC4626.sol';

interface IStakedSyntheticToken is IERC4626 {
  /**
   * @notice Deposit synth tokens and mint stake-tokens
   * @param _wrappedAssets Amount of synth tokens to deposit
   * @param _receiver Address that receives stake-tokens
   * @return shares Amount of stake-tokens minted and received
   */
  function wrappedDeposit(uint256 _wrappedAssets, address _receiver)
    external
    returns (uint256 shares);

  /**
   * @notice Burn staked-tokens and withdraw synth tokens
   * @param _shares Amount of staked-tokens to burn
   * @param _receiver Address that receives synth tokens
   * @param _owner Address that holds staked-tokens to burn
   * @return wrappedAssets Amount of synth tokens received
   */
  function wrappedRedeem(
    uint256 _shares,
    address _receiver,
    address _owner
  ) external returns (uint256 wrappedAssets);

  /**
   * @notice Synth token wrapped in a super-token underlying of this vault
   * @return wrappedAssetTokenAddress Address of synth token wrapped
   */
  function wrappedAsset()
    external
    view
    returns (address wrappedAssetTokenAddress);
}
