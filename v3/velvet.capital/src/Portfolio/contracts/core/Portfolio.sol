// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.17;
import { TransferHelper } from "@uniswap/lib/contracts/libraries/TransferHelper.sol";
import { IVelvetSafeModule } from "../interfaces/vault/IVelvetSafeModule.sol";
import { IERC20Upgradeable } from "@openzeppelin/contracts-upgradeable-4.9.6/token/ERC20/IERC20Upgradeable.sol";
import { ERC20Upgradeable } from "@openzeppelin/contracts-upgradeable-4.9.6/token/ERC20/ERC20Upgradeable.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable-4.9.6/access/OwnableUpgradeable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable-4.9.6/proxy/utils/UUPSUpgradeable.sol";
import { Flags } from "../interfaces/deBridge/Flags.sol";
import { IDeBridgeGateExtended } from "../interfaces/deBridge/IDeBridgeGateExtended.sol";
import { IDeBridgeGate } from "../interfaces/deBridge/IDeBridgeGate.sol";
import { FunctionParameters } from "../FunctionParameters.sol";
import { ErrorLibrary } from "../library/ErrorLibrary.sol";
import { ISatelliteFactory } from "../satellite-contracts/interfaces/ISatelliteFactory.sol";

contract Portfolio is ERC20Upgradeable, OwnableUpgradeable, UUPSUpgradeable {

  IDeBridgeGateExtended public _deBridgeGate;

  address public _vault;
  address public _module;
  address public _depositToken;
  uint256 public _minDepositAmount;
  uint256 public _maxDepositAmount;
  uint256 public _fundRaisingPeriod;
  uint256 public _fundLockPeriod;
  uint256 public _portfolioCreationTime;
  bool public _tradingStarted;

  /// @notice Configuration for the vault
  struct VaultConfig {
    address[] owners;
    bool isCustodial;
    uint256 threshold;
  }
  VaultConfig public _vaultConfig;

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  // Initializes the contract with a name and symbol for the ERC20 token.
  function init(
    FunctionParameters.PortfolioInitData calldata initData
  ) external initializer {
    __Ownable_init();
    __UUPSUpgradeable_init();
    __ERC20_init(initData._name, initData._symbol);

    _vault = initData._vault;
    _module = initData._module;
    _depositToken = initData._depositToken; // TODO: Hardcode it to USDC

    _minDepositAmount = initData._minDepositAmount;
    _maxDepositAmount = initData._maxDepositAmount;
    _fundRaisingPeriod = initData._fundRaisingPeriod;
    _fundLockPeriod = initData._fundLockPeriod;
    _portfolioCreationTime = block.timestamp;
    _deBridgeGate = IDeBridgeGateExtended(initData._deBridgeGate);

    _vaultConfig = VaultConfig({
      owners: initData._owners,
      threshold: initData._threshold,
      isCustodial: initData._isCustodial
    });

    // Initializes configurations for vault management, token settings, access controls, and user management.
    // __VaultConfig_init(initData._vault, initData._module);
    // __PortfolioToken_init(initData._name, initData._symbol);
    // __VaultManager_init();
    // __AccessModifiers_init(initData._accessController);
    // __UserManagement_init(initData._tokenExclusionManager);
  }

  function deployGnosisOnSatellite(address _safeDeployerTarget, uint256 _targetChainID) external payable {
    // TODO : AccessControl
    bytes memory deployData = abi.encodeWithSelector(
      ISatelliteFactory.deployGnosisSafe.selector, // Function to call on the target chain
      _vaultConfig.owners,
      _vaultConfig.threshold
    );

    _send(deployData, _targetChainID, _safeDeployerTarget);
  }

  function _send(
    bytes memory _dstTransactionCall,
    uint256 _targetChainID,
    address _safeDeployerTarget
  ) internal {
    //
    // sanity checks
    //
    uint256 protocolFee = _deBridgeGate.globalFixedNativeFee();
    require(
      msg.value >= protocolFee,
      "fees not covered by the msg.value"
    );

    //
    // start configuring a message
    //
    IDeBridgeGate.SubmissionAutoParamsTo memory autoParams;

    // use the whole amountAfterBridge as the execution fee to be paid to the executor
    autoParams.executionFee = 0;

    // Exposing nativeSender must be requested explicitly
    // We request it bc of CrossChainCounter's onlyCrossChainIncrementor modifier
    autoParams.flags = Flags.setFlag(
      autoParams.flags,
      Flags.PROXY_WITH_SENDER,
      true
    );

    // if something happens, we need to revert the transaction, otherwise the sender will loose assets
    autoParams.flags = Flags.setFlag(
      autoParams.flags,
      Flags.REVERT_IF_EXTERNAL_FAIL,
      true
    );

    autoParams.data = _dstTransactionCall;
    autoParams.fallbackAddress = abi.encodePacked(msg.sender);

    _deBridgeGate.send{ value: msg.value }(
      address(0), // _tokenAddress
      0, // _amount
      _targetChainID, // _chainIdTo
      abi.encodePacked(_safeDeployerTarget), // _receiver
      "", // _permit
      true, // _useAssetFee
      0, // _referralCode
      abi.encode(autoParams) // _autoParams
    );
  }

  // paused required for deposit?
  // paused required for withdraw? => until portfolio is closed or if fundraising failed
  function deposit(uint256 depositAmount) external {
    // Check if the fund raising period has ended
    if (block.timestamp > _portfolioCreationTime + _fundRaisingPeriod)
      revert ErrorLibrary.FundRaisingPeriodEnded();

    // Check if trading has started
    if (_tradingStarted) revert ErrorLibrary.TradingStarted();

    // Check if deposit amount is less than the minimum deposit amount
    if (depositAmount < _minDepositAmount)
      revert ErrorLibrary.LessThanMinDepositAmount();

    // 1. Transfer depositToken from msg.sender to the vault
    TransferHelper.safeTransferFrom(
      _depositToken,
      msg.sender,
      _vault,
      depositAmount
    );
    // 2. Mint portfolio tokens to msg.sender, 1:1 ratio
    _mint(msg.sender, depositAmount);
  }

  function withdraw(uint256 amount) external {
    // TBD

    if (block.timestamp <= _portfolioCreationTime + _fundLockPeriod)
      revert ErrorLibrary.FundLockPeriodNotEnded();

    // 1. Check user balance, revert if not enough
    if (balanceOf(msg.sender) < amount) {
      revert("Insufficient balance");
    }
    // 2. Burn portfolio tokens from msg.sender
    _burn(msg.sender, amount); // TODO: it should be based on ratio of totalSupply and amount
    // 3. Transfer tokens from all chains to user (send cross-chain messages)
  }

  /**
   * @notice Allows a user to withdraw their deposited tokens if the fund raising period has ended and the portfolio is not fully funded.
   * @dev Executes a token transfer from the vault to the user, ensuring secure transaction execution.
   * @param amount The amount of tokens to withdraw.
   */
  function withdrawDeposited(uint256 amount) external {
    if (amount > balanceOf(msg.sender))
      revert ErrorLibrary.InsufficientBalance();
    if (_tradingStarted) revert ErrorLibrary.TradingStarted();

    // Check if the fund raising period has ended
    if (
      block.timestamp > _portfolioCreationTime + _fundRaisingPeriod &&
      balanceOf(_vault) < _maxDepositAmount
    ) {
      _burn(msg.sender, amount);
      _pullFromVault(_depositToken, amount, msg.sender);
    } else {
      revert ErrorLibrary.FundRaisingPeriodNotEnded();
    }
  }

  function startTrading() external {
    if (
      block.timestamp > _portfolioCreationTime + _fundRaisingPeriod &&
      balanceOf(_vault) >= _maxDepositAmount
    ) {
      _tradingStarted = true;
      //Need to mint tokens for LP
      //Need to move 10% of the portfolio from vault to the LP
    }
  }

  /**
   * @notice Transfers specified token amount from the vault to a given address.
   * @dev Executes a token transfer via the VelvetSafeModule, ensuring secure transaction execution.
   * @param _token The token address to transfer.
   * @param _amount The amount of tokens to transfer.
   * @param _to The recipient address of the tokens.
   */
  function _pullFromVault(
    address _token,
    uint256 _amount,
    address _to
  ) internal {
    // Prepare the data for ERC20 token transfer
    bytes memory inputData = abi.encodeWithSelector(
      IERC20Upgradeable.transfer.selector,
      _to,
      _amount
    );

    // Execute the transfer through the safe module and check for success
    (, bytes memory data) = IVelvetSafeModule(_module).executeWallet(
      _token,
      inputData
    );

    // Ensure the transfer was successful; revert if not
    if (!(data.length == 0 || abi.decode(data, (bool)))) {
      revert ErrorLibrary.PullFromVaultFailed();
    }
  }

  /**
   * @notice Authorizes upgrade for this contract
   * @param newImplementation Address of the new implementation
   */
  function _authorizeUpgrade(
    address newImplementation
  ) internal override onlyOwner {
    // Intentionally left empty as required by an abstract contract
  }
}
