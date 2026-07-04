// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity 0.8.9;

import {ISynthereumFinder} from '../../core/interfaces/IFinder.sol';
import {IStakedJarvis} from './interfaces/IStakedJarvis.sol';
import {ISynthereumStakingLPVaultRegistry} from './lp-vaults/interfaces/IStakingLPVaultRegistry.sol';
import {IERC20} from '../../../@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SynthereumInterfaces} from '../../core/Constants.sol';
import {PreciseUnitMath} from '../../base/utils/PreciseUnitMath.sol';
import {SafeERC20} from '../../../@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import {Address} from '../../../@openzeppelin/contracts/utils/Address.sol';
import {EnumerableSet} from '../../../@openzeppelin/contracts/utils/structs/EnumerableSet.sol';
import {ERC20} from '../../../@openzeppelin/contracts/token/ERC20/ERC20.sol';
import {ReentrancyGuard} from '../../../@openzeppelin/contracts/security/ReentrancyGuard.sol';
import {StandardAccessControlEnumerable} from '../../common/roles/StandardAccessControlEnumerable.sol';
import {Pausable} from '../../../@openzeppelin/contracts/security/Pausable.sol';
import {ERC20Permit} from '../../../@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol';

contract StakedJarvis is
  IStakedJarvis,
  ReentrancyGuard,
  StandardAccessControlEnumerable,
  Pausable,
  ERC20Permit
{
  using PreciseUnitMath for uint256;
  using SafeERC20 for IERC20;
  using Address for address;
  using EnumerableSet for EnumerableSet.AddressSet;

  ISynthereumFinder public immutable synthereumFinder;

  EnumerableSet.AddressSet internal supportedTokens;

  mapping(address => uint256) internal jrtToStkJarvisRate;
  mapping(address => mapping(address => UserDeposit)) internal userDeposit;

  event TokenDataSet(address indexed token, uint256 indexed rate);
  event TokenDataRemoved(address indexed token);
  event Staked(
    address indexed sender,
    address indexed recipient,
    address indexed stakeToken,
    uint256 stakeTokenAmount,
    uint256 jarvisAmount,
    uint256 stakedJarvisOut
  );
  event Unstaked(
    address indexed sender,
    address indexed token,
    uint256 amountIn,
    uint256 amountOut
  );

  modifier onlyProxy() {

      ISynthereumStakingLPVaultRegistry registry
     = ISynthereumStakingLPVaultRegistry(
      synthereumFinder.getImplementationAddress(
        SynthereumInterfaces.StakingLPVaultRegistry
      )
    );
    require(
      registry.isWhitelistedProxy(msg.sender),
      'Only from whitelisted proxies'
    );
    _;
  }

  constructor(
    ISynthereumFinder _synthereumFinder,
    string memory _tokenName,
    string memory _tokenSymbol,
    Roles memory _roles
  ) ERC20Permit(_tokenName) ERC20(_tokenName, _tokenSymbol) {
    synthereumFinder = _synthereumFinder;
    _setAdmin(_roles.admin);
    _setMaintainer(_roles.maintainer);
  }

  function setTokenData(address token, uint256 exchangeRate)
    external
    onlyMaintainer
  {
    require(token.isContract(), 'Invalid token');
    require(exchangeRate != 0, 'Invalid rate');
    jrtToStkJarvisRate[token] = exchangeRate;
    supportedTokens.add(token);
    emit TokenDataSet(token, exchangeRate);
  }

  function removeTokenData(address token) external onlyMaintainer {
    delete jrtToStkJarvisRate[token];
    require(supportedTokens.remove(token), 'Invalid token');
    emit TokenDataRemoved(token);
  }

  function stake(
    address stakeToken,
    uint256 stakeTokenAmount,
    uint256 jarvisAmount,
    address recipient
  )
    external
    override
    whenNotPaused
    onlyProxy
    nonReentrant
    returns (uint256 stakedJarvisOut)
  {
    uint256 exchangeRate = jrtToStkJarvisRate[stakeToken];

    require(exchangeRate != 0, 'Wrong token');

    // write storage and mint stkJarvis
    stakedJarvisOut = _stake(
      stakeToken,
      exchangeRate,
      stakeTokenAmount,
      jarvisAmount,
      recipient
    );

    emit Staked(
      msg.sender,
      recipient,
      stakeToken,
      stakeTokenAmount,
      jarvisAmount,
      stakedJarvisOut
    );
  }

  function unstake(address token, uint256 amount)
    external
    override
    onlyProxy
    nonReentrant
    returns (uint256 tokenAmountOut)
  {
    UserDeposit memory userDeposit_ = userDeposit[msg.sender][token];

    tokenAmountOut = _unstake(
      token,
      amount,
      userDeposit_.stakedJarvisAmount,
      userDeposit_.stakedTokenAmount
    );

    emit Unstaked(msg.sender, token, amount, tokenAmountOut);
  }

  function pauseStake() external override onlyMaintainer {
    _pause();
  }

  function unpauseStake() external override onlyMaintainer {
    _unpause();
  }

  function getSupportedTokens()
    external
    view
    override
    returns (address[] memory)
  {
    return supportedTokens.values();
  }

  function isTokenSupported(address token)
    external
    view
    override
    returns (bool)
  {
    return supportedTokens.contains(token);
  }

  function getTokenRate(address token)
    external
    view
    override
    returns (uint256)
  {
    return jrtToStkJarvisRate[token];
  }

  function getUserDeposit(address user, address token)
    external
    view
    override
    returns (UserDeposit memory)
  {
    return userDeposit[user][token];
  }

  function _stake(
    address stakeToken,
    uint256 exchangeRate,
    uint256 stakeTokenAmount,
    uint256 jarvisAmount,
    address recipient
  ) internal returns (uint256 stkJarvisOut) {
    stkJarvisOut = jarvisAmount.mul(exchangeRate);

    // update state
    UserDeposit storage userDeposit_ = userDeposit[msg.sender][stakeToken];
    userDeposit_.stakedTokenAmount += stakeTokenAmount;
    userDeposit_.stakedJarvisAmount += stkJarvisOut;

    // mint stkJarvis
    _mint(recipient, stkJarvisOut);
  }

  function _unstake(
    address token,
    uint256 stkJarvisAmount,
    uint256 userTotalStakedJarvis,
    uint256 userTotalStakedToken
  ) internal returns (uint256 tokenAmountOut) {
    require(stkJarvisAmount <= userTotalStakedJarvis, 'Insufficient balance');

    // burn stkJarvis
    _burn(msg.sender, stkJarvisAmount);

    tokenAmountOut = stkJarvisAmount == userTotalStakedJarvis
      ? userTotalStakedToken
      : userTotalStakedToken.mul(stkJarvisAmount).div(userTotalStakedJarvis);

    // update state
    UserDeposit storage userDepositStorage = userDeposit[msg.sender][token];

    userDepositStorage.stakedTokenAmount =
      userTotalStakedToken -
      tokenAmountOut;
    userDepositStorage.stakedJarvisAmount =
      userTotalStakedJarvis -
      stkJarvisAmount;
  }
}
