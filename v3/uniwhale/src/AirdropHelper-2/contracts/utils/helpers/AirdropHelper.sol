// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.17;

import "../../libs/Errors.sol";
import "../../libs/ERC20Fixed.sol";
import "../../libs/math/FixedPoint.sol";
import "../../interfaces/IMintable.sol";
import "../../interfaces/IBurnable.sol";
import "@openzeppelin/contracts/utils/math/SafeCast.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts/utils/Multicall.sol";

contract AirdropHelper is
  OwnableUpgradeable,
  ReentrancyGuardUpgradeable,
  PausableUpgradeable,
  Multicall
{
  using SafeCast for uint256;
  using FixedPoint for uint256;
  using ERC20Fixed for ERC20;

  // constant subject to governance

  address public uniwhaleToken;
  address public esUniwhaleToken;
  address public genesisPass;
  address public testnetPOAP;

  uint64 public startBlock;
  uint64 public blocksPerCycle;
  uint64 public endCycle;

  mapping(uint32 => uint256) public claimPerCycleByTokenId;
  mapping(uint32 => uint256) public claimPerCycleByPOAPTokenId;

  mapping(address => uint256) public claimPerCycleByHolder;
  mapping(address => uint256) public claimEscrowedPerCycleByHolder;

  // dynamic

  mapping(uint32 => uint32) public claimedCyclesByTokenId;
  mapping(uint32 => uint32) public claimedCyclesByPOAPTokenId;
  mapping(address => uint32) public claimedCyclesByHolder;
  mapping(address => uint32) public claimedCyclesEscrowedByHolder;

  uint256 public burnRate;

  function initialize(
    address _owner,
    address _uniwhaleToken,
    address _esUniwhaleToken,
    address _genesisPass,
    address _testnetPOAP,
    uint64 _startBlock,
    uint64 _blocksPerCycle,
    uint64 _endCycle
  ) external initializer {
    __Ownable_init();
    __ReentrancyGuard_init();
    __Pausable_init();
    _transferOwnership(_owner);

    uniwhaleToken = _uniwhaleToken;
    esUniwhaleToken = _esUniwhaleToken;
    genesisPass = _genesisPass;
    testnetPOAP = _testnetPOAP;
    startBlock = _startBlock;
    blocksPerCycle = _blocksPerCycle;
    endCycle = _endCycle;

    _pause();
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  event ClaimEvent(address claimer, uint256 amount);
  event ClaimEscrowedEvent(address claimer, uint256 amount);
  event ClaimAllEvent(address claimer, uint256 amount);
  event ClaimAllEscrowedEvent(address claimer, uint256 amount);
  event UGPClaimEvent(uint32 tokenId, address claimer, uint256 amount);
  event POAPClaimEvent(uint32 tokenId, address claimer, uint256 amount);
  event UGPClaimAllEvent(uint32 tokenId, address claimer, uint256 amount);
  event POAPClaimAllEvent(uint32 tokenId, address claimer, uint256 amount);
  event SetClaimPerCycleByTokenIdEvent(uint32 tokenId, uint256 claimPerCycle);
  event SetClaimPerCycleByPOAPTokenIdEvent(
    uint32 tokenId,
    uint256 claimPerCycle
  );
  event SetClaimPerCycleByHolderEvent(address holder, uint256 claimPerCycle);
  event SetClaimEscrowedPerCycleByHolderEvent(
    address holder,
    uint256 claimPerCycle
  );
  event SetClaimPerCycleByTokenIdEvent2(
    uint32 lengthTokenIds,
    uint32 boundId,
    uint256 claimPerCycleBefore,
    uint256 claimPerCycleAfter
  );
  event SetClaimPerCycleByPOAPTokenIdEvent2(
    uint32 lengthTokenIds,
    uint256 claimPerCycle
  );
  event SetStartBlockEvent(uint64 startBlock);
  event BurnEvent(uint256 amount);
  event SetBurnRateEvent(uint256 _burnRate);

  // governance functions

  function setBurnRate(uint256 _burnRate) external onlyOwner {
    burnRate = _burnRate;
    emit SetBurnRateEvent(burnRate);
  }

  function unpause() external onlyOwner {
    _unpause();
  }

  function pause() external onlyOwner {
    _pause();
  }

  function setStartBlock(uint64 _startBlock) external onlyOwner {
    startBlock = _startBlock;
    emit SetStartBlockEvent(startBlock);
  }

  function setClaimPerCycleByTokenId(
    uint32 lengthTokenIds,
    uint32 boundId,
    uint256 claimPerCycleBefore,
    uint256 claimPerCycleAfter
  ) external onlyOwner {
    for (uint32 i = 0; i < lengthTokenIds; ++i) {
      if (i < boundId) {
        claimPerCycleByTokenId[i] = claimPerCycleBefore;
      } else {
        claimPerCycleByTokenId[i] = claimPerCycleAfter;
      }
    }
    emit SetClaimPerCycleByTokenIdEvent2(
      lengthTokenIds,
      boundId,
      claimPerCycleBefore,
      claimPerCycleAfter
    );
  }

  function setClaimPerCycleByTokenId(
    uint32[] memory tokenIds,
    uint256[] memory claimPerCycle
  ) external onlyOwner {
    _require(
      tokenIds.length == claimPerCycle.length,
      Errors.INPUT_LENGTH_MISMATCH
    );
    for (uint256 i = 0; i < tokenIds.length; ++i) {
      claimPerCycleByTokenId[tokenIds[i]] = claimPerCycle[i];
      emit SetClaimPerCycleByTokenIdEvent(tokenIds[i], claimPerCycle[i]);
    }
  }

  function setClaimPerCycleByPOAPTokenId(
    uint32 lengthTokenIds,
    uint256 claimPerCycle
  ) external onlyOwner {
    for (uint32 i = 0; i < lengthTokenIds; i++) {
      claimPerCycleByPOAPTokenId[i] = claimPerCycle;
    }
    emit SetClaimPerCycleByPOAPTokenIdEvent2(lengthTokenIds, claimPerCycle);
  }

  function setClaimPerCycleByPOAPTokenId(
    uint32[] memory tokenIds,
    uint256[] memory claimPerCycle
  ) external onlyOwner {
    _require(
      tokenIds.length == claimPerCycle.length,
      Errors.INPUT_LENGTH_MISMATCH
    );
    for (uint256 i = 0; i < tokenIds.length; ++i) {
      claimPerCycleByPOAPTokenId[tokenIds[i]] = claimPerCycle[i];
      emit SetClaimPerCycleByPOAPTokenIdEvent(tokenIds[i], claimPerCycle[i]);
    }
  }

  function setClaimPerCycleByHolder(
    address[] memory holders,
    uint256[] memory claimPerCycle
  ) external onlyOwner {
    _require(
      holders.length == claimPerCycle.length,
      Errors.INPUT_LENGTH_MISMATCH
    );
    for (uint256 i = 0; i < holders.length; ++i) {
      claimPerCycleByHolder[holders[i]] = claimPerCycle[i];
      emit SetClaimPerCycleByHolderEvent(holders[i], claimPerCycle[i]);
    }
  }

  function setClaimEscrowedPerCycleByHolder(
    address[] memory holders,
    uint256[] memory claimPerCycle
  ) external onlyOwner {
    _require(
      holders.length == claimPerCycle.length,
      Errors.INPUT_LENGTH_MISMATCH
    );
    for (uint256 i = 0; i < holders.length; ++i) {
      claimEscrowedPerCycleByHolder[holders[i]] = claimPerCycle[i];
      emit SetClaimEscrowedPerCycleByHolderEvent(holders[i], claimPerCycle[i]);
    }
  }

  function burn(uint256 amount) external onlyOwner {
    IBurnable(uniwhaleToken).burn(amount);
    emit BurnEvent(amount);
  }

  // external functions

  function getCurrentCycle() external view returns (uint32) {
    return _getCurrentCycle();
  }

  function claim() external nonReentrant whenNotPaused {
    _claim(msg.sender);
  }

  function claim(address holder) external nonReentrant whenNotPaused {
    _claim(holder);
  }

  function claimAll() external nonReentrant whenNotPaused {
    _claimAll(msg.sender);
  }

  function claimEscrowed() external nonReentrant whenNotPaused {
    _claimEscrowed(msg.sender);
  }

  function claimEscrowed(address holder) external nonReentrant whenNotPaused {
    _claimEscrowed(holder);
  }

  function claimAllEscrowed() external nonReentrant whenNotPaused {
    _claimAllEscrowed(msg.sender);
  }

  function claim(uint32 tokenId) external nonReentrant whenNotPaused {
    _claim(tokenId, msg.sender);
  }

  function claimAll(uint32 tokenId) external nonReentrant whenNotPaused {
    _claimAll(tokenId, msg.sender);
  }

  function claim(
    uint32 tokenId,
    address holder
  ) external nonReentrant whenNotPaused {
    _claim(tokenId, holder);
  }

  function claimPOAP(uint32 tokenId) external nonReentrant whenNotPaused {
    _claimPOAP(tokenId, msg.sender);
  }

  function claimAllPOAP(uint32 tokenId) external nonReentrant whenNotPaused {
    _claimAllPOAP(tokenId, msg.sender);
  }

  function claimPOAP(
    uint32 tokenId,
    address holder
  ) external nonReentrant whenNotPaused {
    _claimPOAP(tokenId, holder);
  }

  // internal functions

  function _getCurrentCycle() internal view returns (uint32) {
    _require(startBlock <= block.number, Errors.START_BLOCK_NOT_REACHED);
    return
      (((block.number - startBlock) / blocksPerCycle).add(uint256(1)))
        .min(endCycle)
        .toUint32();
  }

  function _claim(address holder) internal {
    uint32 currentCycle = _getCurrentCycle();
    if (claimedCyclesByHolder[holder] < currentCycle) {
      uint256 cyclesToClaim = currentCycle - claimedCyclesByHolder[holder];
      uint256 claimed = claimPerCycleByHolder[holder] * cyclesToClaim;
      claimedCyclesByHolder[holder] = currentCycle;

      ERC20(uniwhaleToken).transferFixed(holder, claimed);
      emit ClaimEvent(holder, claimed);
    }
  }

  function _claimAll(address holder) internal {
    uint256 cyclesToClaim = endCycle - claimedCyclesByHolder[holder];
    uint256 claimed = claimPerCycleByHolder[holder] * cyclesToClaim;
    uint256 toBurn = claimed.mulDown(burnRate);
    uint256 toSend = claimed.sub(toBurn);
    claimedCyclesByHolder[holder] = uint256(endCycle).toUint32();

    ERC20(uniwhaleToken).transferFixed(holder, toSend);
    IBurnable(uniwhaleToken).burn(toBurn);
    emit ClaimAllEvent(holder, claimed);
  }

  function _claimEscrowed(address holder) internal {
    uint32 currentCycle = _getCurrentCycle();
    if (claimedCyclesEscrowedByHolder[holder] < currentCycle) {
      uint256 cyclesToClaim = currentCycle -
        claimedCyclesEscrowedByHolder[holder];
      uint256 claimed = claimEscrowedPerCycleByHolder[holder] * cyclesToClaim;
      claimedCyclesEscrowedByHolder[holder] = currentCycle;

      IMintable(esUniwhaleToken).mint(holder, claimed);
      emit ClaimEscrowedEvent(holder, claimed);
    }
  }

  function _claimAllEscrowed(address holder) internal {
    uint256 cyclesToClaim = endCycle - claimedCyclesEscrowedByHolder[holder];
    uint256 claimed = claimEscrowedPerCycleByHolder[holder] * cyclesToClaim;
    uint256 toBurn = claimed.mulDown(burnRate);
    uint256 toSend = claimed.sub(toBurn);
    claimedCyclesEscrowedByHolder[holder] = uint256(endCycle).toUint32();

    IMintable(esUniwhaleToken).mint(holder, toSend);
    emit ClaimAllEscrowedEvent(holder, claimed);
  }

  function _claim(uint32 tokenId, address holder) internal {
    uint32 currentCycle = _getCurrentCycle();
    _require(
      IERC721(genesisPass).ownerOf(tokenId) == holder,
      Errors.APPROVED_ONLY
    );
    if (claimedCyclesByTokenId[tokenId] < currentCycle) {
      uint256 cyclesToClaim = currentCycle - claimedCyclesByTokenId[tokenId];
      uint256 claimed = claimPerCycleByTokenId[tokenId] * cyclesToClaim;
      claimedCyclesByTokenId[tokenId] = currentCycle;

      ERC20(uniwhaleToken).transferFixed(holder, claimed);
      emit UGPClaimEvent(tokenId, holder, claimed);
    }
  }

  function _claimAll(uint32 tokenId, address holder) internal {
    _require(
      IERC721(genesisPass).ownerOf(tokenId) == holder,
      Errors.APPROVED_ONLY
    );
    uint256 cyclesToClaim = endCycle - claimedCyclesByTokenId[tokenId];
    uint256 claimed = claimPerCycleByTokenId[tokenId] * cyclesToClaim;
    uint256 toBurn = claimed.mulDown(burnRate);
    uint256 toSend = claimed.sub(toBurn);
    claimedCyclesByTokenId[tokenId] = uint256(endCycle).toUint32();

    ERC20(uniwhaleToken).transferFixed(holder, toSend);
    IBurnable(uniwhaleToken).burn(toBurn);
    emit UGPClaimAllEvent(tokenId, holder, claimed);
  }

  function _claimPOAP(uint32 tokenId, address holder) internal {
    uint32 currentCycle = _getCurrentCycle();
    _require(
      IERC721(testnetPOAP).ownerOf(tokenId) == holder,
      Errors.APPROVED_ONLY
    );
    if (claimedCyclesByPOAPTokenId[tokenId] < currentCycle) {
      uint256 cyclesToClaim = currentCycle -
        claimedCyclesByPOAPTokenId[tokenId];
      uint256 claimed = claimPerCycleByPOAPTokenId[tokenId] * cyclesToClaim;
      claimedCyclesByPOAPTokenId[tokenId] = currentCycle;

      ERC20(uniwhaleToken).transferFixed(holder, claimed);
      emit POAPClaimEvent(tokenId, holder, claimed);
    }
  }

  function _claimAllPOAP(uint32 tokenId, address holder) internal {
    _require(
      IERC721(testnetPOAP).ownerOf(tokenId) == holder,
      Errors.APPROVED_ONLY
    );
    uint256 cyclesToClaim = endCycle - claimedCyclesByPOAPTokenId[tokenId];
    uint256 claimed = claimPerCycleByPOAPTokenId[tokenId] * cyclesToClaim;
    uint256 toBurn = claimed.mulDown(burnRate);
    uint256 toSend = claimed.sub(toBurn);
    claimedCyclesByPOAPTokenId[tokenId] = uint256(endCycle).toUint32();

    ERC20(uniwhaleToken).transferFixed(holder, toSend);
    IBurnable(uniwhaleToken).burn(toBurn);
    emit POAPClaimAllEvent(tokenId, holder, claimed);
  }
}
