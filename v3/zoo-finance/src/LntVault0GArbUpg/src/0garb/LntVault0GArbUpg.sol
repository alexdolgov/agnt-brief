// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.26;

import {UUPSUpgradeable} from "@openzeppelin-upgradeable/contracts/proxy/utils/UUPSUpgradeable.sol";
import {Initializable} from "@openzeppelin-upgradeable/contracts/proxy/utils/Initializable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin-upgradeable/contracts/utils/ReentrancyGuardUpgradeable.sol";
import {ERC721HolderUpgradeable} from "@openzeppelin-upgradeable/contracts/token/ERC721/utils/ERC721HolderUpgradeable.sol";

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC721} from "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import {DoubleEndedQueue} from "@openzeppelin/contracts/utils/structs/DoubleEndedQueue.sol";

import {IProtocol} from "src/interfaces/IProtocol.sol";
import {IProtocolSettings} from "src/interfaces/IProtocolSettings.sol";
import {ILntVault0GArb} from "src/interfaces/0garb/ILntVault0GArb.sol";
import {I0GArbNodeNFT} from "src/interfaces/0garb/I0GArbNodeNFT.sol";

import {Constants} from "src/libraries/Constants.sol";
import {TokenHelper} from "src/libraries/TokenHelper.sol";

contract LntVault0GArbUpg is ILntVault0GArb, UUPSUpgradeable, ReentrancyGuardUpgradeable, TokenHelper, ERC721HolderUpgradeable {
    using Math for uint256;
    using DoubleEndedQueue for DoubleEndedQueue.Bytes32Deque;

    address public protocol;  

    bool public pausedDeposit;
    bool public pausedRedeem;

    address public NFT;

    DoubleEndedQueue.Bytes32Deque internal _nftDepositQueue;

    mapping(address => uint256) public userDepositCount;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize(
        address _protocol, address _NFT
    ) initializer public {
        require(
            _protocol != address(0) && _NFT != address(0),
            "Zero address detected"
        );

        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();
        __ERC721Holder_init();

        protocol = _protocol;

        NFT = _NFT;
    }

    /* ================= VIEWS ================ */

    function owner() public view returns(address) {
        return IProtocol(protocol).owner();
    }

    /**
    * @dev See {IERC165-supportsInterface}.
    */
    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IERC721Receiver).interfaceId || interfaceId == type(ILntVault0GArb).interfaceId;
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function deposit(uint256 tokenId) external nonReentrant whenNotPausedDeposit {
        _deposit(tokenId);
    }

    function batchDeposit(uint256[] calldata tokenIds) external nonReentrant whenNotPausedDeposit {
        require(tokenIds.length > 0, "Invalid input");

        for (uint256 i = 0; i < tokenIds.length; i++) {
            _deposit(tokenIds[i]);
        }
    }

    function redeem() external nonReentrant whenNotPausedRedeem returns (uint256 tokenId) {
        tokenId = _redeem();
    }

    function batchRedeem(uint256 count) external nonReentrant whenNotPausedRedeem returns (uint256[] memory tokenIds) {
        require(count > 0, "Invalid redeem count");

        tokenIds = new uint256[](count);
        for (uint256 i = 0; i < count; i++) {
            tokenIds[i] = _redeem();
        }
    }

    /* ========== INTERNAL FUNCTIONS ========== */

    function _deposit(uint256 tokenId) internal{
        require(IERC721(NFT).ownerOf(tokenId) == msg.sender, "Not owner of NFT");
        IERC721(NFT).safeTransferFrom(msg.sender, address(this), tokenId);
        require(IERC721(NFT).ownerOf(tokenId) == address(this), "NFT transfer failed");

        _nftDepositQueue.pushBack(bytes32(tokenId));

        userDepositCount[msg.sender] += 1;

        emit Deposit(tokenId, msg.sender);
    }

    function _redeem() internal returns (uint256 tokenId) {
        require(userDepositCount[msg.sender] > 0, "No deposit record found for user");
        require(_nftDepositQueue.length() > 0, "No NFT available for redeem");

        tokenId = uint256(_nftDepositQueue.popBack());
        
        userDepositCount[msg.sender] -= 1;

        IERC721(NFT).transferFrom(address(this), msg.sender, tokenId);

        emit Redeem(tokenId, msg.sender);
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    function pauseDeposit() external nonReentrant onlyOwner {
        require(!pausedDeposit, "Already paused deposit");
        pausedDeposit = true;

        emit PauseDeposit(msg.sender);
    }

    function unpauseDeposit() external nonReentrant onlyOwner {
        require(pausedDeposit, "Not paused deposit");
        pausedDeposit = false;

        emit UnpauseDeposit(msg.sender);
    }

    function pauseRedeem() external nonReentrant onlyOwner {
        require(!pausedRedeem, "Already paused redeem");
        pausedRedeem = true;

        emit PauseRedeem(msg.sender);
    }

    function unpauseRedeem() external nonReentrant onlyOwner {
        require(pausedRedeem, "Not paused redeem");
        pausedRedeem = false;

        emit UnpauseRedeem(msg.sender);
    }

    /* ============== MODIFIERS =============== */

    modifier onlyOwner() {
        require(msg.sender == owner(), "Caller is not the owner");
        _;
    }

    modifier whenNotPausedDeposit() {
        require(!pausedDeposit, "Deposit is paused");
        _;
    }

    modifier whenNotPausedRedeem() {
        require(!pausedRedeem, "Redeem is paused");
        _;
    }

    modifier onlyOwnerOrUpgrader() {
        require(
            msg.sender == owner() || IProtocol(protocol).isUpgrader(msg.sender),
            "Caller is not the owner or an upgrader"
        );
        _;
    }

    /* ============= PROXY RELATED ============== */

    function _authorizeUpgrade(address newImplementation) internal override onlyOwnerOrUpgrader {
    }

    /**
     * @dev This empty reserved space is put in place to allow future versions to add new
     * variables without shifting down storage in the inheritance chain.
     * See https://docs.openzeppelin.com/upgrades-plugins/writing-upgradeable#storage-gaps
     */
    uint256[49] private __gap;
}
