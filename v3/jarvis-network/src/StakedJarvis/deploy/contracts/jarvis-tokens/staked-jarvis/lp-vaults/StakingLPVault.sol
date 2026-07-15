// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../../core/interfaces/IFinder.sol';
import {ILPVaultImplementation} from './interfaces/ILPVaultImplementation.sol';
import {ISynthereumStakingLPVault} from './interfaces/IStakingLPVault.sol';
import {ISynthereumStakingLPVaultData} from './interfaces/IStakingLPVaultData.sol';
import {IStakedJarvis} from '../interfaces/IStakedJarvis.sol';
import {IERC20} from '../../../../@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SynthereumInterfaces} from '../../../core/Constants.sol';
import {SafeERC20} from '../../../../@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {Address} from '../../../../@openzeppelin/contracts/utils/Address.sol';
import {EnumerableSet} from '../../../../@openzeppelin/contracts/utils/structs/EnumerableSet.sol';
import {ERC2771Context} from '../../../common/ERC2771Context.sol';
import {ReentrancyGuardUpgradeable} from '../../../../@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol';

contract SynthereumStakingLPVault is
  ISynthereumStakingLPVault,
  ERC2771Context,
  ReentrancyGuardUpgradeable
{
  using SafeERC20 for IERC20;
  using Address for address;
  using Address for address payable;
  using EnumerableSet for EnumerableSet.AddressSet;

  ISynthereumFinder public immutable synthereumFinder;
  address internal vaultAdmin;
  EnumerableSet.AddressSet internal delegatedUsers;

  event Initialized(address vaultAdmin);
  event AddedUser(address indexed user);
  event RemovedUser(address indexed user);
  event Claimed(address[] tokenAddresses, uint256[] amounts);

  modifier onlyLPVaultFactory() {
    require(
      msg.sender ==
        synthereumFinder.getImplementationAddress(
          SynthereumInterfaces.StakingLPVaultFactory
        ),
      'Not allowed'
    );
    _;
  }

  constructor(ISynthereumFinder _finder) {
    synthereumFinder = _finder;
    _disableInitializers();
  }

  receive() external payable {}

  function initialize(address admin)
    external
    override
    initializer
    onlyLPVaultFactory
  {
    vaultAdmin = admin;

    // reentrancy initialisation
    __ReentrancyGuard_init();

    emit Initialized(admin);
  }

  function addDelegatedUser(address user) external override {
    _isVaultAdmin();
    require(delegatedUsers.add(user), 'User already delegated');

    emit AddedUser(user);
  }

  function removeDelegatedUser(address user) external override {
    _isVaultAdmin();
    require(delegatedUsers.remove(user), 'User not delegted');

    emit RemovedUser(user);
  }

  // add liquidity + liquidity stake
  function depositAndStake(
    address vaultAddress,
    address recipient,
    bytes calldata userArgs
  )
    external
    payable
    override
    nonReentrant
    returns (
      uint256 stakedJarvisOut,
      address stakeToken,
      uint256 stakeTokenAmountOut,
      uint256[] memory refunds,
      uint256 jarvisAmount
    )
  {
    address msgSender = _isVaultUser();

    // retrieve vault args from registry
    bytes memory moduleArgs = _getVaultArgs(vaultAddress);

    // add liquidity + gauge staking via module delegate call
    bytes memory result = vaultAddress.functionDelegateCall(
      abi.encodeWithSelector(
        ILPVaultImplementation.depositAndStakeLiquidity.selector,
        moduleArgs,
        userArgs,
        msgSender
      )
    );
    (stakeTokenAmountOut, refunds, stakeToken, jarvisAmount) = abi.decode(
      result,
      (uint256, uint256[], address, uint256)
    );

    // mint stake jarvis
    stakedJarvisOut = _mintStakedJarvis(
      stakeToken,
      stakeTokenAmountOut,
      jarvisAmount,
      recipient
    );
  }

  // unstake stakedJarvis
  function unstakeAndWithdraw(
    address vaultAddress,
    address stakeToken,
    address recipient,
    uint256 stkJarvisAmount,
    bytes calldata userArgs
  )
    external
    override
    nonReentrant
    returns (
      uint256 stakeTokenOut,
      address[] memory tokensOut,
      uint256[] memory amountsOut,
      uint256 jarvisAmountOut
    )
  {
    address msgSender = _isVaultUser();

    // unstake staked jarvis - receive staking token
    stakeTokenOut = _unstakeStakedJarvis(
      stakeToken,
      stkJarvisAmount,
      msgSender
    );

    // retrieve vault args from registry
    bytes memory moduleArgs = _getVaultArgs(vaultAddress);

    // delegate call vault module
    bytes memory result = vaultAddress.functionDelegateCall(
      abi.encodeWithSelector(
        ILPVaultImplementation.unstakeAndWithdraw.selector,
        stakeTokenOut,
        recipient,
        moduleArgs,
        userArgs
      )
    );

    address stakeTokenUsed;
    (stakeTokenUsed, tokensOut, amountsOut, jarvisAmountOut) = abi.decode(
      result,
      (address, address[], uint256[], uint256)
    );

    require(stakeToken == stakeTokenUsed, 'Stake token mismatch');
  }

  function claimRewards(address vaultAddress, bytes calldata userArgs)
    external
    override
    nonReentrant
    returns (address[] memory tokenAddresses, uint256[] memory amounts)
  {
    _isVaultUser();

    // retrieve vault args from registry
    bytes memory moduleArgs = _getVaultArgs(vaultAddress);

    // delegate call vault module
    bytes memory result = vaultAddress.functionDelegateCall(
      abi.encodeWithSelector(
        ILPVaultImplementation.claimRewards.selector,
        moduleArgs,
        userArgs
      )
    );

    (tokenAddresses, amounts) = abi.decode(result, (address[], uint256[]));

    emit Claimed(tokenAddresses, amounts);
  }

  function withdrawToken(address token) external override {
    address msgSender = _isVaultAdmin();
    address stakedJarvis = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.StakedJarvisToken
    );
    IStakedJarvis.UserDeposit memory deposit = IStakedJarvis(stakedJarvis)
      .getUserDeposit(address(this), token);

    require(
      deposit.stakedTokenAmount == 0 && deposit.stakedJarvisAmount == 0,
      'This token is locked'
    );

    if (token == address(0)) {
      payable(msgSender).sendValue(address(this).balance);
    } else {
      IERC20(token).safeTransfer(
        msgSender,
        IERC20(token).balanceOf(address(this))
      );
    }
  }

  function getDelegatedUsers()
    external
    view
    override
    returns (address[] memory)
  {
    return delegatedUsers.values();
  }

  function isDelegatedUser(address user) external view override returns (bool) {
    return delegatedUsers.contains(user);
  }

  function getVaultAdmin() external view override returns (address) {
    return vaultAdmin;
  }

  function isVaultAdmin(address user) external view override returns (bool) {
    return vaultAdmin == user;
  }

  function isTrustedForwarder(address forwarder)
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
      if (forwarder == trustedForwarder) {
        return true;
      } else {
        return false;
      }
    } catch {
      return false;
    }
  }

  function _mintStakedJarvis(
    address stakeToken,
    uint256 stakeTokenAmountOut,
    uint256 jarvisAmount,
    address recipient
  ) internal returns (uint256 stakedJarvisOut) {
    address stakedJarvis = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.StakedJarvisToken
    );

    // return amount of staked jarvis token received
    stakedJarvisOut = IStakedJarvis(stakedJarvis).stake(
      stakeToken,
      stakeTokenAmountOut,
      jarvisAmount,
      recipient
    );
  }

  function _unstakeStakedJarvis(
    address stakeToken,
    uint256 amount,
    address msgSender
  ) internal returns (uint256 amountOut) {
    // transfer and unstake jarvis token
    address stakedJarvis = synthereumFinder.getImplementationAddress(
      SynthereumInterfaces.StakedJarvisToken
    );
    IERC20(stakedJarvis).safeTransferFrom(msgSender, address(this), amount);

    amountOut = IStakedJarvis(stakedJarvis).unstake(stakeToken, amount);
  }

  function _getVaultArgs(address vaultAddress)
    internal
    view
    returns (bytes memory args)
  {
    ISynthereumStakingLPVaultData vaultRegistry = ISynthereumStakingLPVaultData(
      synthereumFinder.getImplementationAddress(
        SynthereumInterfaces.StakingLPVaultData
      )
    );

    args = vaultRegistry.getVaultArgs(vaultAddress);
  }

  function _isVaultUser() internal view returns (address msgSender) {
    msgSender = _msgSender();
    require(
      msgSender == vaultAdmin || delegatedUsers.contains(msgSender),
      'Not your vault'
    );
  }

  function _isVaultAdmin() internal view returns (address msgSender) {
    msgSender = _msgSender();
    require(msgSender == vaultAdmin, 'Not admin of the vault');
  }
}
