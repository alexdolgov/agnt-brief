// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.4;

import "hardhat/console.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "./OracleClient.sol";
import "../tokens/Seedmon.sol";
import "../tokens/SeedmonAttribute.sol";
import "../utils/SafeMath.sol";
import "../../interface/ITreeFarm.sol";
import "../../interface/IBigFarm.sol";

contract VendingMachine is OwnableUpgradeable, OracleClient {
    /****************************************************
    // ******************  Events ***********************
    // **************************************************/
    event CreatePack(
        uint256 indexed packID,
        string packName,
        uint256 tokenPrice,
        uint256 bonusPoint,
        uint256 maxTicket
    );
    event SetPackStatus(uint256 indexed packID, bool active);
    event AddSeedmon(uint256 indexed packID, bytes32 name, uint256 birthRate);
    event RemoveSeedmon(uint256 indexed packID, bytes32 name);

    event IssueTicket(
        address indexed player,
        uint256 indexed packID,
        uint256 tokenAmount,
        uint256 ticketID
    );
    event RefundTicket(
        address indexed player,
        uint256 tokenAmount,
        uint256 ticketID
    );
    event CreateSeedmon(address indexed player, uint256 indexed packID, uint256 ticketID, bytes32 name);

    /****************************************************
    // ******************  Struct ***********************
    // **************************************************/
    struct PackInfo {
        string name;
        uint256 tokenPrice;
        uint256 bonusPoint;
        bool onStatus;
        uint256 minPrivilegeLevel;
        uint256 ticketLimit;
    }

    struct TicketInfo {
        uint256 packID;
        address player;
        uint256 ticketID;
        uint256 amount;
        uint256 gasPrice;
    }

    /****************************************************
    // ******************  Attributes *******************
    // **************************************************/

    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    using AddressUpgradeable for address;
    using Counters for Counters.Counter;

    /// @dev Main attributes of Gachapon
    Seedmon public seedmon;
    IERC20 public token;
    uint256 constant MINIMUM_GAS_PRICE = 6e15;
    ITreeFarm public treeWallet;
    address public burnWallet;
    address public feeWallet;
    uint256 constant TREE_ALLOCATION = 35;
    uint256 constant BURN_ALLOCATION = 60;
    uint256 constant FEE_ALLOCATION = 5;
    uint256 constant TOTAL_ALLOCATION = 100;

    IBigFarm private bigFarm;
    uint256 constant BIGFARM_TREE_PID = 3;
    uint256 constant PRIV_LEVEL_2 = 10;    // Silver
    uint256 constant PRIV_LEVEL_3 = 50;    // Gold
    uint256 constant PRIV_LEVEL_4 = 100;   // Diamond
    uint256 constant PRIV_LEVEL_5 = 500;   // Ultra
    uint256 constant PRIV_LEVEL_6 = 1500;  // Legendary
    mapping(uint256 => uint256) private privLevelToMinBonus;
    mapping(uint256 => uint256) private privLevelToMaxBonus;
    
    /// @dev Package attributes
    uint256 private nextPackID;
    mapping(uint256 => PackInfo) public packIDToPackInfo;
    mapping(uint256 => mapping(bytes32 => uint256)) packIDToNameToBirthRate;
    mapping(uint256 => bytes32[]) packIDToNames;
    mapping(uint256 => Counters.Counter) public packIDToIssuedTicket;

    /// @dev Play/Random attributes
    mapping(address => uint256) public playerToTicketID;
    Counters.Counter public ticketCounter;
    mapping(uint256 => TicketInfo) private ticketIDToTicketInfo;

    function initialize(
        IERC20 _token,
        Seedmon _seedmon,
        IOracle _oracle,
        IBigFarm _bigFarm,
        ITreeFarm _treeWallet,
        address _burnWallet,
        address _feeWallet
    ) external initializer {
        __Ownable_init();
        __randomOracle_init(_oracle);

        token = _token;
        seedmon = _seedmon;
        nextPackID = 0;
        bigFarm = _bigFarm;
        treeWallet = _treeWallet;
        burnWallet = _burnWallet;
        feeWallet = _feeWallet;

    }

    /****************************************************
    // *************** External Function ****************
    // **************************************************/

    /// @notice Player select packID and input gas to run the gachapon
    function getGachaTicket(uint256 _packID) external payable {
        require(
            !msg.sender.isContract(),
            "VendingMachine: not allow call by contract address"
        );
        require(
            MINIMUM_GAS_PRICE <= msg.value,
            "VendingMachine: gas price is insufficient"
        );
        require(
            playerToTicketID[msg.sender] == 0,
            "VendingMachine: please wait previous ticket to finish"
        );
        require(
            packIDToPackInfo[_packID].onStatus == true,
            "VendingMachine: invalid pack ID"
        );
        require(
            packIDToIssuedTicket[_packID].current() < packIDToPackInfo[_packID].ticketLimit,
            "VendingMachine: pack is sold out"
        );
        require(
            token.allowance(msg.sender, address(this)) >=
                packIDToPackInfo[_packID].tokenPrice,
            "VendingMachine: please check token allowance amount"
        );
        uint256 privilegeLevel = getPrivilegeLevel();
        require(
            privilegeLevel >= packIDToPackInfo[_packID].minPrivilegeLevel,
            "VendingMachine: not authorized for this pack"
        );

        ticketCounter.increment();
        playerToTicketID[msg.sender] = ticketCounter.current();
        ticketIDToTicketInfo[ticketCounter.current()] = TicketInfo({
            packID: _packID,
            player: msg.sender,
            ticketID: ticketCounter.current(),
            amount: packIDToPackInfo[_packID].tokenPrice,
            gasPrice: msg.value
        });
        token.transferFrom(
            msg.sender,
            address(this),
            packIDToPackInfo[_packID].tokenPrice
        );
        packIDToIssuedTicket[_packID].increment();

        //Get random seedmon from oracle
        requestRandomSeedmon(
            ticketCounter.current(), 
            _packID,
            (packIDToPackInfo[_packID].bonusPoint + privLevelToMinBonus[privilegeLevel]),
            (packIDToPackInfo[_packID].bonusPoint + privLevelToMaxBonus[privilegeLevel]), 
            msg.value 
        );

        emit IssueTicket(
            msg.sender,
            _packID,
            packIDToPackInfo[_packID].tokenPrice,
            ticketCounter.current()
        );
    }

    /// @notice Player can refund if it still processing
    function requestRefund() external {
        require(
            !msg.sender.isContract(),
            "VendingMachine: not allow call by contract address"
        );
        uint256 ticketID = playerToTicketID[msg.sender];
        require(ticketID != 0, "VendingMachine: No ticket for refund");

        refund(ticketID);
    }

    /****************************************************
    // *************** Owner Function ****************
    // **************************************************/

    function createPack(uint256 _tokenPrice, uint256 _bonusPoint, uint256 _minPrivilegeLevel, uint256 _ticketLimit, string memory _packName)
        external
        onlyOwner
    {
        require(_tokenPrice > 0, "VendingMachine: token price is invalid");
        require(_minPrivilegeLevel >= 0 && _minPrivilegeLevel <= 6, "VendingMachine: minimum privilege is invalid");
        uint256 packID = nextPackID;
        PackInfo memory packInfo = PackInfo({
            name: _packName,
            tokenPrice: _tokenPrice,
            bonusPoint: _bonusPoint,
            onStatus: true,
            minPrivilegeLevel: _minPrivilegeLevel,
            ticketLimit: _ticketLimit
        });
        packIDToPackInfo[packID] = packInfo;
        nextPackID = nextPackID + 1;
        emit CreatePack(packID, _packName, _tokenPrice, _bonusPoint, _ticketLimit);
    }

    function setPackStatus(uint256 _packID, bool _on) external onlyOwner {
        require(
            packIDToPackInfo[_packID].tokenPrice > 0,
            "VendingMachine: invalid pack ID"
        );
        packIDToPackInfo[_packID].onStatus = _on;
        emit SetPackStatus(_packID, _on);
    }

    function packLength() external view returns (uint256) {
        return nextPackID;
    }

    function addSeedmon(
        uint256 _packID,
        bytes32 _name,
        uint256 _birthRate
    ) external onlyOwner {
        require(
            packIDToPackInfo[_packID].tokenPrice > 0,
            "VendingMachine: invalid pack ID"
        );
        require(
            _birthRate > 0 && _birthRate <= 100,
            "VendingMachine: invalid birth rate"
        );
        require(
            packIDToNameToBirthRate[_packID][_name] == 0,
            "VendingMachine: seedmon already added"
        );
        require(
            seedmon.doesSeedmonExist(_name) == true,
            "VendingMachine: seedmon is not existed"
        );

        packIDToNameToBirthRate[_packID][_name] = _birthRate;
        packIDToNames[_packID].push(_name);

        emit AddSeedmon(_packID, _name, _birthRate);
    }

    function removeSeedmon(uint256 _packID, bytes32 _name) external onlyOwner {
        require(
            packIDToPackInfo[_packID].tokenPrice > 0,
            "VendingMachine: invalid pack ID"
        );
        require(
            packIDToNameToBirthRate[_packID][_name] > 0,
            "VendingMachine: seedmon is not added"
        );

        packIDToNameToBirthRate[_packID][_name] == 0;
        for (uint256 i = 0; i < packIDToNames[_packID].length; i++) {
            if (packIDToNames[_packID][i] == _name) {
                packIDToNames[_packID][i] = packIDToNames[_packID][
                    packIDToNames[_packID].length - 1
                ];
                packIDToNames[_packID].pop();
            }
        }
        emit RemoveSeedmon(_packID, _name);
    }

    function listSeedmon(uint256 _packID)
        external
        view
        returns (bytes32[] memory name, uint256[] memory birthRate)
    {
        birthRate = new uint256[](packIDToNames[_packID].length);
        for (uint256 i = 0; i < packIDToNames[_packID].length; i++) {
            birthRate[i] = packIDToNameToBirthRate[_packID][
                packIDToNames[_packID][i]
            ];
        }
        return (packIDToNames[_packID], birthRate);
    }

    function setBurnWallet(address _burnWallet) external onlyOwner {
        burnWallet = _burnWallet;
    }
    function setTreeWallet(ITreeFarm _treeWallet) external onlyOwner {
        treeWallet = _treeWallet;
    }
    function setFeeWallet(address _feeWallet) external onlyOwner {
        feeWallet = _feeWallet;
    }

    /****************************************************
    // *************** Internal Function ****************
    // **************************************************/

    /// @notice after oracle finishing the randomness, start to call minting seedmon (call from oracle only)
    function processCreation(uint256 ticketID, bytes32 seedmonName, uint256[] memory stats)
        internal
        override
    {
        require(
            stats.length == 6,
            "VendingMachine: Invalid provide stats from oracle"
        );

        TicketInfo memory ticket = ticketIDToTicketInfo[ticketID];
        require(
            ticket.player != address(0),
            "VendingMachine: Ticket is not valid from oracle"
        );

        require(
            packIDToNameToBirthRate[ticket.packID][seedmonName] > 0,
            "VendingMachine: Invalid seedmon name from oracle"
        );

        SeedmonAttribute.UniqueProfile memory unique = getUnique();
        seedmon.mint(ticket.player, seedmonName, unique, getSeedmonStat(stats));
        uint256 treeReward = (ticket.amount * TREE_ALLOCATION) / TOTAL_ALLOCATION;
        token.approve(address(treeWallet), treeReward);
        treeWallet.addReward( treeReward);
        token.safeTransfer(burnWallet, (ticket.amount * BURN_ALLOCATION) / TOTAL_ALLOCATION);
        token.safeTransfer(feeWallet, (ticket.amount * FEE_ALLOCATION) / TOTAL_ALLOCATION);

        delete playerToTicketID[ticket.player];
        delete ticketIDToTicketInfo[ticketID];
        emit CreateSeedmon(ticket.player, ticket.packID, ticketID, seedmonName);
    }

    function processRefund(uint256 ticketID, uint256 providedGas)
        internal
        override
    {
        TicketInfo memory ticket = ticketIDToTicketInfo[ticketID];
        require(
            ticket.player != address(0),
            "VendingMachine: Ticket is not valid"
        );

        token.transfer(ticket.player, ticket.amount);

        if (providedGas > 0) {
            payable(ticket.player).transfer(providedGas);
        }
        delete ticketIDToTicketInfo[ticketID];
        delete playerToTicketID[ticket.player];
        packIDToIssuedTicket[ticket.packID].decrement();
        emit RefundTicket(ticket.player, ticket.amount, ticketID);
    }

    /// @dev This function only used by process creation, after get random number
    function ratioNumber(
        uint256 from1,
        uint256 to1,
        uint256 from2
    ) internal pure returns (uint256 to2) {
        to2 = (from2 * to1) / from1 ;
        if (to2 == 0){
            to2 = 1;
        }
    }

    function getUnique()
        internal
        view
        returns (SeedmonAttribute.UniqueProfile memory)
    {
        return
            SeedmonAttribute.UniqueProfile({
                birthTimestamp: block.timestamp,
                fatherTokenId: 0,
                motherTokenId: 0,
                numberOfFused: 0,
                exp: 0
            });
    }

    function getSeedmonStat(uint256[] memory bonusStats)
        internal
        pure
        returns (SeedmonAttribute.Stat memory)
    {
        
        SeedmonAttribute.Stat memory stat = SeedmonAttribute.Stat({
            vitality: bonusStats[0],
            strength: bonusStats[1],
            smart: bonusStats[2],
            speed: bonusStats[3],
            dexterity: bonusStats[4],
            luck: bonusStats[5]
        });
        return stat;
    }

    /// @dev 6 level of HOLDER priviledge [1,2,..,6]
    function getPrivilegeLevel() internal view returns (uint256 level){
        IBigFarm.Farmer memory farmer;
        uint256 totalPendingReward;
        uint256 currentBlock;
        (farmer, totalPendingReward, currentBlock) = bigFarm.getFarmer(BIGFARM_TREE_PID, msg.sender);
        uint256 planted = farmer.stakeAmount;
        if      (planted >= PRIV_LEVEL_6)   { return 6;}
        else if (planted >= PRIV_LEVEL_5)   { return 5;}
        else if (planted >= PRIV_LEVEL_4)   { return 4;}
        else if (planted >= PRIV_LEVEL_3)   { return 3;}
        else if (planted >= PRIV_LEVEL_2)   { return 2;}
        else                                { return 1;}
    }

    function setAdditionalPrivilegeBonus(uint256 privilegeLevel, uint256 min, uint256 max) external {
        privLevelToMinBonus[privilegeLevel] = min;
        privLevelToMaxBonus[privilegeLevel] = max;
    }
}
