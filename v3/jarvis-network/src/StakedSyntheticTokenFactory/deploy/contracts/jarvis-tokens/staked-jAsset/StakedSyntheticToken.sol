// SPDX-License-Identifier: AGPL-3.0-only

pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../core/interfaces/IFinder.sol';
import {IERC20} from '../../../@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {ISuperToken} from './interfaces/ISuperToken.sol';
import {IStakedSyntheticToken} from './interfaces/IStakedSyntheticToken.sol';
import {SynthereumInterfaces} from '../../core/Constants.sol';
import {SafeERC20} from '../../../@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {BaseERC4626} from '../../base/utils/BaseERC4626.sol';
import {ERC2771Context} from '../../common/ERC2771Context.sol';
import {Context} from '../../../@openzeppelin/contracts/utils/Context.sol';
import {ERC20} from '../../../@openzeppelin/contracts/token/ERC20/ERC20.sol';
import {ERC20Permit} from '../../../@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol';

contract StakedSyntheticToken is
  IStakedSyntheticToken,
  ERC2771Context,
  BaseERC4626
{
  using SafeERC20 for IERC20;

  ISynthereumFinder public immutable synthereumFinder;

  IERC20 internal immutable wrappedSynthToken;

  constructor(
    ISynthereumFinder _finder,
    string memory _tokenName,
    string memory _tokenSymbol,
    ISuperToken _asset
  )
    BaseERC4626(_asset)
    ERC20Permit(_tokenName)
    ERC20(_tokenName, _tokenSymbol)
  {
    synthereumFinder = _finder;
    wrappedSynthToken = IERC20(_asset.getUnderlyingToken());
    require(address(wrappedSynthToken) != address(0), 'No wrapped asset');
    require(
      _asset.getUnderlyingDecimals() == 18,
      'Wrong wrapped asset decimals'
    );
  }

  /**
   * @notice Deposit synth tokens and mint stake-tokens
   * @param _wrappedAssets Amount of synth tokens to deposit
   * @param _receiver Address that receives stake-tokens
   * @return Amount of stake-tokens minted and received
   */
  function wrappedDeposit(uint256 _wrappedAssets, address _receiver)
    external
    override
    returns (uint256)
  {
    uint256 maxAssets = maxDeposit(_receiver);
    if (_wrappedAssets > maxAssets) {
      revert ERC4626ExceededMaxDeposit(_receiver, _wrappedAssets, maxAssets);
    }
    uint256 shares = previewDeposit(_wrappedAssets);
    _wrappedDeposit(_msgSender(), _receiver, _wrappedAssets, shares);
    return shares;
  }

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
  ) external override returns (uint256 wrappedAssets) {
    wrappedAssets = redeem(_shares, address(this), _owner);
    ISuperToken(address(_asset)).downgradeTo(_receiver, wrappedAssets);
  }

  /**
   * @notice Synth token wrapped in a super-token underlying of this vault
   * @return Address of synth token wrapped
   */
  function wrappedAsset() external view override returns (address) {
    return address(wrappedSynthToken);
  }

  /**
   * @notice Check if an address is the trusted forwarder
   * @param  _forwarder Address to check
   * @return True is the input address is the trusted forwarder, otherwise false
   */
  function isTrustedForwarder(address _forwarder)
    public
    view
    override
    returns (bool)
  {
    try
      synthereumFinder.getImplementationAddress(
        SynthereumInterfaces.TrustedForwarder
      )
    returns (address trustedForwarder) {
      if (_forwarder == trustedForwarder) {
        return true;
      } else {
        return false;
      }
    } catch {
      return false;
    }
  }

  /**
   * @notice Wrap synth tokens in the super tokens and mint stake-tokens
   */
  function _wrappedDeposit(
    address _caller,
    address _receiver,
    uint256 _assets,
    uint256 _shares
  ) internal virtual {
    wrappedSynthToken.safeTransferFrom(_caller, address(this), _assets);
    wrappedSynthToken.safeIncreaseAllowance(address(_asset), _assets);
    ISuperToken(address(_asset)).upgrade(_assets);

    _mint(_receiver, _shares);

    emit Deposit(_caller, _receiver, _assets, _shares);
  }

  /**
   * @notice Return sender of the transaction
   */
  function _msgSender()
    internal
    view
    override(ERC2771Context, Context)
    returns (address sender)
  {
    return ERC2771Context._msgSender();
  }

  /**
   * @notice Return data of the transaction
   */
  function _msgData()
    internal
    view
    override(ERC2771Context, Context)
    returns (bytes calldata)
  {
    return ERC2771Context._msgData();
  }
}
