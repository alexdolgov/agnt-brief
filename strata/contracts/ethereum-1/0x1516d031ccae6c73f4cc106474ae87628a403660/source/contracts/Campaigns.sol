// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "./interfaces/IUSDT.sol";
import "./interfaces/IIDIDRegistry.sol";

contract Campaigns is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    // Enum for Agreement Types
    enum AgreementType {
        AFFILIATE
    }

    // Struct to hold Campaign details
    struct Campaign {
        string campaignName;
        string publisher;
        string campaignType; // "affiliate" or "ad"
        uint256 totalBudget; // In USDT (6 decimals)
        uint256 conversionsLimit;
        string conversionsType; // "view", "click", or "conversion"
        uint256 budgetPerDay;
        uint256 startDate;
        uint256 endDate;
    }

    // Mapping from campaign ID to Campaign
    mapping(string => Campaign) private campaigns;

    // Array to keep track of campaign IDs
    string[] private campaignIDs;

    // Events
    event CampaignCreated(string indexed campaignID, Campaign campaign);
    event CampaignUpdated(string indexed campaignID, Campaign campaign);
    event CampaignDeleted(string indexed campaignID);
    event FundsDeposited(string indexed campaignID, uint256 amount);
    event FundsWithdrawn(string indexed campaignID, uint256 amount);

    // USDT and DID Registry Interfaces
    IUSDT public usdt;
    IIDIDRegistry public didRegistry;

    // Initializer instead of constructor for upgradeable contracts
    function initialize(address _usdtAddress, address _didRegistryAddress, address _owner) public initializer {
        __Ownable_init(_owner);
        __ReentrancyGuard_init();

        require(_usdtAddress != address(0), "Invalid USDT address");
        require(_didRegistryAddress != address(0), "Invalid DID Registry address");

        usdt = IUSDT(_usdtAddress);
        didRegistry = IIDIDRegistry(_didRegistryAddress);
    }

    /**
     * @dev Create a new campaign.
     * @param campaignID Unique identifier for the campaign.
     * @param campaign Campaign details.
     */
    function createCampaign(string memory campaignID, Campaign memory campaign) external onlyOwner {
        require(bytes(campaignID).length > 0, "Campaign ID required");
        require(campaigns[campaignID].startDate == 0, "Campaign already exists");
        require(campaign.startDate < campaign.endDate, "Invalid campaign dates");
        require(campaign.totalBudget > 0, "Budget must be greater than zero");
        campaigns[campaignID] = campaign;
        campaignIDs.push(campaignID);
        emit CampaignCreated(campaignID, campaign);
    }

    /**
     * @dev Update an existing campaign.
     * @param campaignID Identifier of the campaign to update.
     * @param updatedCampaign New campaign details.
     */
    function updateCampaign(string memory campaignID, Campaign memory updatedCampaign) external onlyOwner {
        require(campaigns[campaignID].startDate != 0, "Campaign does not exist");
        require(updatedCampaign.startDate < updatedCampaign.endDate, "Invalid campaign dates");
        campaigns[campaignID] = updatedCampaign;
        emit CampaignUpdated(campaignID, updatedCampaign);
    }

    /**
     * @dev Delete an existing campaign.
     * @param campaignID Identifier of the campaign to delete.
     */
    function deleteCampaign(string memory campaignID) external onlyOwner {
        require(campaigns[campaignID].startDate != 0, "Campaign does not exist");
        delete campaigns[campaignID];

        // Remove campaignID from campaignIDs array
        for (uint256 i = 0; i < campaignIDs.length; i++) {
            if (keccak256(bytes(campaignIDs[i])) == keccak256(bytes(campaignID))) {
                campaignIDs[i] = campaignIDs[campaignIDs.length - 1];
                campaignIDs.pop();
                break;
            }
        }

        emit CampaignDeleted(campaignID);
    }

    /**
     * @dev Retrieve campaign details.
     * @param campaignID Identifier of the campaign.
     * @return Campaign details.
     */
    function getCampaign(string memory campaignID) external view returns (Campaign memory) {
        require(campaigns[campaignID].startDate != 0, "Campaign does not exist");
        return campaigns[campaignID];
    }

    /**
     * @dev Get all campaign IDs.
     * @return Array of campaign IDs.
     */
    function getAllCampaignIDs() external view returns (string[] memory) {
        return campaignIDs;
    }

    /**
     * @dev Deposit funds into a campaign.
     * @param campaignID Identifier of the campaign.
     * @param amount Amount to deposit in USDT (6 decimals).
     */
    function depositFunds(string memory campaignID, uint256 amount) external onlyOwner nonReentrant {
        require(campaigns[campaignID].startDate != 0, "Campaign does not exist");
        require(amount > 0, "Amount must be greater than zero");
        usdt.transferFrom(msg.sender, address(this), amount);
        campaigns[campaignID].totalBudget += amount;
        emit FundsDeposited(campaignID, amount);
    }

    /**
     * @dev Withdraw funds from a campaign.
     * @param campaignID Identifier of the campaign.
     * @param amount Amount to withdraw in USDT (6 decimals).
     */
    function withdrawFunds(string memory campaignID, uint256 amount) external onlyOwner nonReentrant {
        Campaign storage campaign = campaigns[campaignID];
        require(campaign.startDate != 0, "Campaign does not exist");
        require(amount > 0, "Amount must be greater than zero");
        require(campaign.totalBudget >= amount, "Insufficient budget");
        campaign.totalBudget -= amount;
        usdt.transfer(msg.sender, amount);
        emit FundsWithdrawn(campaignID, amount);
    }
}