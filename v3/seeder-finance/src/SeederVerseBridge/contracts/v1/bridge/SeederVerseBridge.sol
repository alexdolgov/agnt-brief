// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/utils/ERC721Holder.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "./BridgeOracleClient.sol";
import "../tokens/Seed.sol";
import "../tokens/Seedmon.sol";
import "../tokens/SeedmonAttribute.sol";
import "../utils/SafeMath.sol";

contract SeederVerseBridge is OwnableUpgradeable, ERC721Holder, BridgeOracleClient {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using AddressUpgradeable for address;
    using Counters for Counters.Counter;

    Seedmon public seedmon;
    Seed public seed;
    uint256 public seedTimelock;

    struct SeedmonWithdrawerInfo {
        uint256 ticketId;
        uint256[] tokenIds;
    }

    struct SeedWithdrawerInfo {
        uint256 ticketId;
        uint256 requestAmount;
    }
    
    Counters.Counter public ticketCounter;

    mapping(address => SeedmonWithdrawerInfo) private seedmonWithdrawerToInfo;
    mapping(uint256 => address) private tokenIdToDepositor;
    mapping(address => uint256[]) private seedmonOwnerToTokenIds;
    mapping(address => SeedWithdrawerInfo) private seedWithdrawerToInfo;
    mapping(address => uint256) private seedWithdrawerToNextUnlockDate;
    mapping(uint256 => address) public ticketIdToRequester;
    mapping(uint256 => bytes32) private seedmonIdToName; //unused

    event SeedmonsDeposited(uint256[] tokenIds, address indexed depositor);
    event WithdrawSeedmonsRequested(uint256 ticketId, uint256[] tokenIds, address indexed withdrawer);
    event SeedmonsWithdrawn(uint256 ticketId, uint256[] tokenIds, address indexed withdrawer, bool isSuccess);
    event SeedDeposited(uint256 amount, address indexed depositor);
    event WithdrawSeedRequested(uint256 ticketId, uint256 amount, address indexed withdrawer);
    event SeedWithdrawn(uint256 ticketId, uint256 amount, address indexed withdrawer, bool isSuccess);
    event WithdrawSeedCancelled(uint256 ticketId, address indexed withdrawer);
    event WithdrawSeedmonCancelled(uint256 ticketId, address indexed withdrawer);
    event EmergencyWithdrawSeedCancelled(uint256 ticketId, address indexed canceller);
    event EmergencyWithdrawSeedmonCancelled(uint256 ticketId, address indexed canceller);
    event EmergencyWithdrawSeedmon(uint256 tokenId, address indexed withdrawer);

    function initialize(Seedmon _seedmon, Seed _seed, IOracle _oracle, uint256 _seedTimelock) external initializer {
        seedmon = _seedmon;
        seed = _seed;
        seedTimelock = _seedTimelock;
        __Ownable_init();
        __randomOracle_init(_oracle);
    }

    function emergencyWithdrawSeedmon(uint256[] memory tokenIds) external onlyOwner {
        for (uint i = 0; i < tokenIds.length; i++) {
            address withdrawer = tokenIdToDepositor[tokenIds[i]];
            seedmon.safeTransferFrom(address(this), withdrawer, tokenIds[i]);
            removeDepositedSeedmon(withdrawer, tokenIds[i]);
            delete tokenIdToDepositor[tokenIds[i]];

            emit EmergencyWithdrawSeedmon(tokenIds[i], withdrawer);
        }
    }

    function setSeedTimelock(uint256 _timelock) external onlyOwner {
        seedTimelock = _timelock;
    }

    function depositedSeedmon(address depositer) external view returns (uint256[] memory tokenIds, bytes32[] memory names) {
        tokenIds = seedmonOwnerToTokenIds[depositer];
        names = new bytes32[](tokenIds.length);
        for (uint i = 0; i < tokenIds.length; i++) {
            (names[i],,) = seedmon.tokenInfo(tokenIds[i]);
        }
        return (tokenIds, names);
    }

    function seedWithdrawerInfo(address withdrawer) 
        external 
        view 
        returns (uint256 ticketId, uint256 requestAmount, uint256 unlockDate) 
    {
        SeedWithdrawerInfo memory info = seedWithdrawerToInfo[withdrawer];
        unlockDate = seedWithdrawerToNextUnlockDate[withdrawer];
        return (info.ticketId, info.requestAmount, unlockDate);
    }

    function seedmonWithdrawerInfo(address withdrawer) 
        external 
        view 
        returns (uint256 ticketId, uint256[] memory tokenIds) 
    {
        SeedmonWithdrawerInfo memory info = seedmonWithdrawerToInfo[withdrawer];
        return (info.ticketId, info.tokenIds);
    }

    function depositSeedmons(uint256[] memory tokenIds) external {
        for (uint i = 0; i < tokenIds.length; i++) {
            seedmon.safeTransferFrom(msg.sender, address(this), tokenIds[i]);
            tokenIdToDepositor[tokenIds[i]] = msg.sender;
            addDepositedSeedmon(msg.sender, tokenIds[i]);
        }
        emit SeedmonsDeposited(tokenIds, msg.sender);
    }

    function depositSeed(uint256 amount) external {
        
        seed.transferFrom(msg.sender, address(this), amount);
        seed.burn(amount);

        emit SeedDeposited(amount, msg.sender);
    }

    function createWithdrawSeedmonsRequest(uint256[] memory tokenIds) external payable {
        require(
            seedmonWithdrawerToInfo[msg.sender].ticketId == 0,
            "SeederVerseBridge: please wait previous ticket to finish"
        );
        for (uint256 i = 0; i < tokenIds.length; i++) {
            address depositor = tokenIdToDepositor[tokenIds[i]];
            require(msg.sender == depositor, "SeederVerseBridge: Unauthorized");
        }
        ticketCounter.increment();
        uint256 ticketId = ticketCounter.current();
        ticketIdToRequester[ticketId] = msg.sender;
        seedmonWithdrawerToInfo[msg.sender] = SeedmonWithdrawerInfo(ticketId, tokenIds);
        requestWithdrawSeedmons(ticketId, tokenIds, msg.value);
        emit WithdrawSeedmonsRequested(ticketId, tokenIds, msg.sender);
    }

    function createWithdrawSeedRequest(uint256 amount) external payable {
        require(amount > 0, "SeederVerseBridge: Invalid input amount");
        require(amount % 1E16 == 0, "only 2 decimal places are allowed");
        require(block.timestamp > seedWithdrawerToNextUnlockDate[msg.sender], 
            "SeederVerseBridge: withdrawal temporary locked");
        SeedWithdrawerInfo memory info = seedWithdrawerToInfo[msg.sender];
        require(info.requestAmount == 0, "SeederVerseBridge: Duplicated withdraw seed request");

        ticketCounter.increment();
        uint256 ticketId = ticketCounter.current();
        
        info.requestAmount = amount;
        info.ticketId = ticketId;
        ticketIdToRequester[ticketId] = msg.sender;
        seedWithdrawerToInfo[msg.sender] = info;
        requestWithdrawSeed(ticketId, amount, msg.sender, msg.value);

        emit WithdrawSeedRequested(ticketId, amount, msg.sender);
    }

    function createCancelWithdrawSeedRequest() external {
        require(!msg.sender.isContract(), "SeederVerseBridge: not allow call by contract address");
        uint256 ticketId = seedWithdrawerToInfo[msg.sender].ticketId;
        require(ticketId != 0, "SeederVerseBridge: No ticket for cancel");

        requestCancelWithdrawSeed(ticketId);
    }

    function createCancelWithdrawSeedmonRequest() external {
        require(!msg.sender.isContract(), "SeederVerseBridge: not allow call by contract address");
        uint256 ticketId = seedmonWithdrawerToInfo[msg.sender].ticketId;
        require(ticketId != 0, "SeederVerseBridge: No ticket for cancel");

        requestCancelWithdrawSeedmon(ticketId);
    }

    function emergencyCancelWithdrawSeed(uint256 requestId) external onlyOwner {
        address withdrawer = ticketIdToRequester[requestId];
        delete ticketIdToRequester[requestId];
        delete seedWithdrawerToInfo[withdrawer];

        emit EmergencyWithdrawSeedCancelled(requestId, msg.sender);
    }

    function emergencyCancelWithdrawSeedmon(uint256[] memory  requestIds) external onlyOwner {
        for (uint i = 0; i < requestIds.length; i++) {
            address withdrawer = ticketIdToRequester[requestIds[i]];
            delete ticketIdToRequester[requestIds[i]];
            delete seedmonWithdrawerToInfo[withdrawer];

            emit EmergencyWithdrawSeedmonCancelled(requestIds[i], msg.sender);
        }
    }

    function processWithdrawSeedmons(
        uint256 ticketId, 
        uint256[] memory tokenIds, 
        uint256[] memory exps, 
        bool isSuccess
    ) 
        internal 
        override 
    {
        address withdrawer = ticketIdToRequester[ticketId];
        if (isSuccess) {
            for (uint256 i = 0; i < tokenIds.length; i++) {
                uint256 tokenId = tokenIds[i];
                (, SeedmonAttribute.UniqueProfile memory uniqueProfile, SeedmonAttribute.Stat memory bonusStat) 
                    = seedmon.tokenInfo(tokenId);

                uniqueProfile.exp = exps[i];
                seedmon.updateSeedmon(tokenId, uniqueProfile, bonusStat);
                seedmon.safeTransferFrom(address(this), withdrawer, tokenId);
                removeDepositedSeedmon(withdrawer, tokenId);
                delete tokenIdToDepositor[tokenId];
            }
        }
        delete ticketIdToRequester[ticketId];
        delete seedmonWithdrawerToInfo[withdrawer];

        emit SeedmonsWithdrawn(ticketId, tokenIds, withdrawer, isSuccess);
    }

    function processWithdrawSeed(uint256 requestId, uint256 tokenBalance, bool isSuccess) 
        internal 
        override 
    {
        address withdrawer = ticketIdToRequester[requestId];
        require(withdrawer != address(0), "SeederVerseBridge: Invalid request ID");
        uint256 requestAmount = seedWithdrawerToInfo[withdrawer].requestAmount;

        delete ticketIdToRequester[requestId];
        delete seedWithdrawerToInfo[withdrawer];

        if (isSuccess) {
            require(tokenBalance >= requestAmount, "SeederVerseBridge: Insufficient Seed balance");
            seed.mint(withdrawer, requestAmount);
            setNextAvailableWithdrawDate(withdrawer);
        }

        emit SeedWithdrawn(requestId, requestAmount, withdrawer, isSuccess);
    }

    function processCancelWithdrawSeed(uint256 requestId, uint256 providedGas) internal override {
        address withdrawer = ticketIdToRequester[requestId];
        require(withdrawer != address(0), "SeederVerseBridge: Ticket is not valid");

        if (providedGas > 0) {
            payable(withdrawer).transfer(providedGas);
        }

        delete ticketIdToRequester[requestId];
        delete seedWithdrawerToInfo[withdrawer];

        emit WithdrawSeedCancelled(requestId, withdrawer);
    }

    function processCancelWithdrawSeedmon(uint256 requestId, uint256 providedGas) internal override {
        address withdrawer = ticketIdToRequester[requestId];
        require(withdrawer != address(0), "SeederVerseBridge: Ticket is not valid");

        if (providedGas > 0) {
            payable(withdrawer).transfer(providedGas);
        }

        delete ticketIdToRequester[requestId];
        delete seedmonWithdrawerToInfo[withdrawer];

        emit WithdrawSeedmonCancelled(requestId, withdrawer);
    }

    function setNextAvailableWithdrawDate(address withdrawer) private {
        seedWithdrawerToNextUnlockDate[withdrawer] = block.timestamp + seedTimelock;
    }
    
    function addDepositedSeedmon(address seedmonOwner, uint tokenId) private {
        seedmonOwnerToTokenIds[seedmonOwner].push(tokenId);
    }   
    
    function removeDepositedSeedmon(address seedmonOwner, uint removeTokenId) private {
        uint256[] storage tokenIds = seedmonOwnerToTokenIds[seedmonOwner];
        uint256 lastIndex = tokenIds.length - 1;
        for (uint i = 0; i < tokenIds.length; i++) {
            if (removeTokenId == tokenIds[i]) {
                tokenIds[i] = tokenIds[lastIndex];
                seedmonOwnerToTokenIds[seedmonOwner].pop();
                break;
            }
        }
    }
}
