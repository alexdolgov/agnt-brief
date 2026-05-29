// SPDX-License-Identifier: MIT
pragma solidity >=0.8.18;

import '@openzeppelin/contracts/utils/Address.sol';
import '@openzeppelin/contracts/interfaces/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';

struct SymmCoreCallerStorage {
  bool initialized; // Whether this store was already initialised
  address owner; // Cold wallet key should be used rarely to set bots, rebalancers, restrictedSelectors
  address pendingOwner; // The proposed owner
  address symmioAddress; // Symmio diamond contract addres
  mapping(address => bool) bots; // _call can only be called by bots
}

contract SymmCoreCaller {
  using Address for address;
  using Address for address payable;
  using SafeERC20 for IERC20;

  event ProposeNewOwner(address indexed currentOwner, address indexed proposedOwner);
  event TransferOwnership(address indexed oldOwner, address indexed newOwner);

  event AddBot(address indexed bot);
  event RemoveBot(address indexed bot);

  function storeV1() internal pure returns (SymmCoreCallerStorage storage store) {
    bytes32 STORE_V1_SLOT = keccak256('perps.hedger.symmCoreCaller.store.v1');
    assembly {
      store.slot := STORE_V1_SLOT
    }
  }

  modifier onlyOwner() {
    require(storeV1().owner == msg.sender, 'symmCoreCaller: Only owner allowed!');
    _;
  }

  modifier onlyPendingOwner() {
    require(storeV1().pendingOwner == msg.sender, 'symmCoreCaller: Only pending owner allowed!');
    _;
  }

  modifier onlyBot() {
    require(storeV1().bots[msg.sender], 'symmCoreCaller: Only bot allowed!');
    _;
  }

  function initStoreV1(address owner, address symmioAddress, address[] calldata bots) external {
    SymmCoreCallerStorage storage sv1 = storeV1();
    require(!sv1.initialized, 'symmCoreCaller: Store already initialized');

    _changeOwner(owner);
    sv1.symmioAddress = symmioAddress;

    _addBots(bots);

    sv1.initialized = true;
  }

  // Only bots
  function _call(bytes[] calldata _callDatas) external virtual onlyBot {
    SymmCoreCallerStorage storage sv1 = storeV1();

    for (uint8 i; i < _callDatas.length; i++) {
      bytes memory _callData = _callDatas[i];
      require(_callData.length >= 4, 'symmCoreCaller: Invalid call data');

      bytes4 functionSelector;
      assembly {
        functionSelector := mload(add(_callData, 0x20))
      }

      sv1.symmioAddress.functionCall(_callData);
    }
  }

  // Only owner functions
  function proposeNewOwner(address newOwner) external onlyOwner {
    SymmCoreCallerStorage storage sv1 = storeV1();
    sv1.pendingOwner = newOwner;
    emit ProposeNewOwner(sv1.owner, newOwner);
  }

  function acceptOwnership() external onlyPendingOwner {
    _changeOwner(msg.sender);
  }

  function addBots(address[] calldata bots) external onlyOwner {
    _addBots(bots);
  }

  function removeBots(address[] calldata bots) external onlyOwner {
    _removeBots(bots);
  }

  function withdrawNative() external onlyOwner {
    payable(msg.sender).sendValue(address(this).balance);
  }

  function withdrawERC20(address token, uint256 amount) external onlyOwner {
    IERC20(token).safeTransfer(msg.sender, amount);
  }

  // View functions
  function isInitialized() public view returns (bool) {
    return storeV1().initialized;
  }

  function getOwner() public view returns (address) {
    return storeV1().owner;
  }

  function getPendingOwner() public view returns (address) {
    return storeV1().pendingOwner;
  }

  function getSymmioAddress() public view returns (address) {
    return storeV1().symmioAddress;
  }

  function isBotWhitelisted(address _bot) public view returns (bool) {
    return storeV1().bots[_bot];
  }

  // Private functions
  function _addBots(address[] calldata bots) private {
    SymmCoreCallerStorage storage sv1 = storeV1();
    for (uint256 i; i < bots.length; i++) {
      sv1.bots[bots[i]] = true;
      emit AddBot(bots[i]);
    }
  }

  function _changeOwner(address newOwner) private {
    SymmCoreCallerStorage storage sv1 = storeV1();
    emit TransferOwnership(sv1.owner, newOwner);
    sv1.owner = newOwner;
  }

  function _removeBots(address[] calldata bots) private {
    SymmCoreCallerStorage storage sv1 = storeV1();
    for (uint256 i; i < bots.length; i++) {
      sv1.bots[bots[i]] = false;
      emit RemoveBot(bots[i]);
    }
  }
}
