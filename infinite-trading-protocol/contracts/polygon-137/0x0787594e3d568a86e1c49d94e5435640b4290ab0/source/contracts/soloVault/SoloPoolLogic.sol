//
//        __  __    __  ________  _______    ______   ________
//       /  |/  |  /  |/        |/       \  /      \ /        |
//   ____$$ |$$ |  $$ |$$$$$$$$/ $$$$$$$  |/$$$$$$  |$$$$$$$$/
//  /    $$ |$$ |__$$ |$$ |__    $$ |  $$ |$$ | _$$/ $$ |__
// /$$$$$$$ |$$    $$ |$$    |   $$ |  $$ |$$ |/    |$$    |
// $$ |  $$ |$$$$$$$$ |$$$$$/    $$ |  $$ |$$ |$$$$ |$$$$$/
// $$ \__$$ |$$ |  $$ |$$ |_____ $$ |__$$ |$$ \__$$ |$$ |_____
// $$    $$ |$$ |  $$ |$$       |$$    $$/ $$    $$/ $$       |
//  $$$$$$$/ $$/   $$/ $$$$$$$$/ $$$$$$$/   $$$$$$/  $$$$$$$$/
//
// dHEDGE DAO - https://dhedge.org
//
// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import "./ISoloPoolManagerLogic.sol";
import "./ISoloPoolFactory.sol";
import "../interfaces/IERC20Extended.sol";
import "../interfaces/IHasGuardInfo.sol";
import "../interfaces/IHasAssetInfo.sol";
import "../interfaces/IHasSupportedAsset.sol";
import "../interfaces/IPoolFactory.sol";
import "../interfaces/IGovernance.sol";
import "../interfaces/guards/IGuard.sol";
import "../utils/AddressHelper.sol";

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/math/SafeMathUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

/// @notice A pool with only one investor and contract / asset guards
contract SoloPoolLogic is OwnableUpgradeable, ReentrancyGuardUpgradeable {
  using SafeMathUpgradeable for uint256;
  using AddressHelper for address;

  struct TxToExecute {
    address to;
    bytes data;
  }

  event TransactionExecuted(address pool, address manager, uint16 transactionType, uint256 time);
  event AssetGuardSet(uint16 assetType, address guardAddress);
  event PoolManagerLogicSet(address poolManagerLogic, address from);

  address public trader;
  uint256 public creationTime;
  address public poolManagerLogic; // for supported asset handling

  /// @notice Initialize the pool
  function initialize(address _trader) external initializer {
    __Ownable_init();
    __ReentrancyGuard_init();

    trader = _trader;
    creationTime = block.timestamp;
  }

  // ----- PUBLIC FUNCTIONS ----- //

  /// @notice Exposed function to let pool talk to other protocol
  /// @dev Execute single transaction for the pool
  /// @param to The destination address for pool to talk to
  /// @param data The data that going to send in the transaction
  /// @return success A boolean for success or fail transaction
  function execTransaction(address to, bytes calldata data) external returns (bool success) {
    return _execTransaction(to, data);
  }

  /// @notice Exposed function to let pool talk to other protocol
  /// @dev Execute multiple transactions for the pool
  /// @param txs Array of structs, each consisting of address and data
  /// @return success A boolean indicating if all transactions succeeded
  function execTransactions(TxToExecute[] calldata txs) external returns (bool success) {
    require(txs.length > 0, "no transactions to execute");
    for (uint256 i = 0; i < txs.length; i++) {
      bool result = _execTransaction(txs[i].to, txs[i].data);
      require(result, "transaction failure");
    }
    return true;
  }

  // ----- OWNER FUNCTIONS ----- //

  /// @notice Withdraw ERC20 tokens
  /// @dev owner can withdraw any erc20 tokens
  /// @param _token ERC20 token address
  function withdrawToken(address _token, uint256 _amount) external onlyOwner {
    _token.tryAssemblyCall(abi.encodeWithSelector(IERC20Extended.transfer.selector, msg.sender, _amount));
  }

  function withdrawNative(uint256 _nativeTokenAmount) external onlyOwner {
    address payable to = msg.sender;
    to.transfer(_nativeTokenAmount);
  }

  /// @notice Set address for pool manager logic
  /// @dev Simple setup to handle asset validation only
  function setPoolManagerLogic(address _poolManagerLogic) external onlyOwner returns (bool) {
    require(_poolManagerLogic != address(0), "Invalid poolManagerLogic address");

    poolManagerLogic = _poolManagerLogic;
    emit PoolManagerLogicSet(_poolManagerLogic, msg.sender);
    return true;
  }

  // ----- INTERNAL FUNCTIONS ----- //

  /// @notice Private function to let pool talk to other protocol
  /// @dev execute transaction for the pool
  /// @param to The destination address for pool to talk to
  /// @param data The data that going to send in the transaction
  /// @return success A boolean for success or fail transaction
  function _execTransaction(address to, bytes memory data) private nonReentrant returns (bool success) {
    require(to != address(0), "non-zero address is required");

    // check if there is a contract guard configured in dHEDGE or the SoloPoolFactory
    address soloPoolFactory = ISoloPoolManagerLogic(poolManagerLogic).factory();
    address contractGuard = ISoloPoolFactory(soloPoolFactory).getContractGuard(to);

    // Checks if dHEDGE has an asset guard configured, otherwise uses the default ERC20Guard
    address dhedgePoolFactory = ISoloPoolFactory(soloPoolFactory).dhedgePoolFactory();
    uint16 assetType = IHasAssetInfo(dhedgePoolFactory).getAssetType(to); // assetType 0 = ERC20Guard
    address governance = IPoolFactory(dhedgePoolFactory).governanceAddress();
    address assetGuard = IGovernance(governance).assetGuards(assetType);

    uint16 txType;
    bool isPublic;
    if (contractGuard != address(0)) {
      (txType, isPublic) = IGuard(contractGuard).txGuard(poolManagerLogic, to, data);
    } else {
      // only asset guard is available
      require(assetGuard != address(0), "Guard not found");
    }

    if (txType == 0 && assetGuard != address(0)) {
      // contract guard is not available
      (txType, isPublic) = IGuard(assetGuard).txGuard(poolManagerLogic, to, data);
    }

    require(txType > 0, "invalid transaction");
    // solhint-disable-next-line reason-string
    require(isPublic || msg.sender == owner() || msg.sender == trader, "only owner or trader or public function");

    success = to.tryAssemblyCall(data);

    emit TransactionExecuted(address(this), owner(), txType, block.timestamp);
  }

  uint256[50] private __gap;
}
