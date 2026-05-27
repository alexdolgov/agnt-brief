// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

import "./interfaces/IUSDT.sol";
import "./interfaces/IIDIDRegistry.sol";
import "./Campaigns.sol";

contract Agreements is Initializable, OwnableUpgradeable, ReentrancyGuardUpgradeable {
    // Enum for Agreement Status
    enum AgreementStatus {
        PENDING,
        APPROVED,
        REJECTED,
        COMPLETED,
        DISPUTED
    }

    // Enum for Agreement Types
    enum AgreementType {
        AFFILIATE
    }

    // Struct for Agreement
    struct Agreement {
        bytes16 proposingDID;
        bytes16 acceptingDID;
        string campaignID;
        AgreementStatus status;
        AgreementType agreementType;
        bool supervisor; // Fits in the same storage slot as the previous variables
        uint256 offer;
        uint256 createdAt;
        uint256 approvedAt;
        bool proposerApproved;
        bool accepterApproved;
        uint256 fulfilledAmount;
    }

    // Mapping from agreement ID to Agreement
    mapping(string => Agreement) private agreements;

    // Disputed agreement IDs
    string[] private disputes;

    // Reference to Campaigns contract
    Campaigns public campaignsContract;

    // USDT and DID Registry Interfaces
    IUSDT public usdt;
    IIDIDRegistry public didRegistry;

    // Events
    event AgreementCreated(string indexed agreementID, Agreement agreement);
    event AgreementUpdated(string indexed agreementID, Agreement agreement);
    event AgreementDeleted(string indexed agreementID);
    event PaymentApproved(string indexed agreementID, address approver);
    event FundsReleased(string indexed agreementID, uint256 amount);
    event DisputeFiled(string indexed agreementID);

    modifier onlyProposerOrAccepter(string memory agreementID) {
        Agreement memory agreement = agreements[agreementID];
        require(
            didRegistry.getController(abi.encodePacked(agreement.proposingDID)) == msg.sender ||
            didRegistry.getController(abi.encodePacked(agreement.acceptingDID)) == msg.sender,
            "Caller is not proposer or accepter"
        );
        _;
    }

    // Initializer
    function initialize(
        address _usdtAddress,
        address _campaignsAddress,
        address _didRegistryAddress,
        address _owner
    ) public initializer {
        __Ownable_init(_owner);
        __ReentrancyGuard_init();

        require(_usdtAddress != address(0), "Invalid USDT address");
        require(_campaignsAddress != address(0), "Invalid Campaigns address");
        require(_didRegistryAddress != address(0), "Invalid DID Registry address");

        usdt = IUSDT(_usdtAddress);
        campaignsContract = Campaigns(_campaignsAddress);
        didRegistry = IIDIDRegistry(_didRegistryAddress);
    }

    /**
     * @dev Create a new agreement.
     * @param agreementID Unique identifier for the agreement.
     * @param agreement Agreement details.
     */
    function createAgreement(
        string memory agreementID, 
        Agreement memory agreement
    ) external onlyProposerOrAccepter(agreementID) {
        require(bytes(agreementID).length > 0, "Agreement ID required");
        require(agreements[agreementID].createdAt == 0, "Agreement already exists");
        require(campaignsContract.getCampaign(agreement.campaignID).startDate != 0, "Campaign does not exist");
        require(agreement.offer > 0, "Offer must be greater than zero");

        agreement.status = AgreementStatus.PENDING;
        agreement.createdAt = block.timestamp;
        agreements[agreementID] = agreement;

        emit AgreementCreated(agreementID, agreement);
    }

    /**
     * @dev Update an existing agreement.
     * @param agreementID Identifier of the agreement to update.
     * @param updatedAgreement New agreement details.
     */
    function updateAgreement(
        string memory agreementID, 
        Agreement memory updatedAgreement
    ) external onlyProposerOrAccepter(agreementID) {
        require(agreements[agreementID].createdAt != 0, "Agreement does not exist");

        agreements[agreementID] = updatedAgreement;
        emit AgreementUpdated(agreementID, updatedAgreement);
    }

    /**
     * @dev Delete an existing agreement.
     * @param agreementID Identifier of the agreement to delete.
     */
    function deleteAgreement(string memory agreementID) external onlyOwner {
        require(agreements[agreementID].createdAt != 0, "Agreement does not exist");
        delete agreements[agreementID];
        emit AgreementDeleted(agreementID);
    }

    /**
     * @dev Approve payment for an agreement.
     * @param agreementID Identifier of the agreement.
     */
    function approvePayment(string memory agreementID) external nonReentrant {
        Agreement storage agreement = agreements[agreementID];
        require(
            agreement.status == AgreementStatus.PENDING ||
                agreement.status == AgreementStatus.APPROVED,
            "Cannot approve"
        );

        // Verify caller's DID
        bool isProposer = false;
        bool isAccepter = false;

        if (didRegistry.isDIDRegistered(abi.encodePacked(agreement.proposingDID))) {
            address proposerAddress = didRegistry.getController(abi.encodePacked(agreement.proposingDID));
            isProposer = (proposerAddress == msg.sender);
        }

        if (didRegistry.isDIDRegistered(abi.encodePacked(agreement.acceptingDID))) {
            address accepterAddress = didRegistry.getController(abi.encodePacked(agreement.acceptingDID));
            isAccepter = (accepterAddress == msg.sender);
        }

        require(isProposer || isAccepter, "Not authorized");

        if (isProposer) {
            agreement.proposerApproved = true;
        }

        if (isAccepter) {
            agreement.accepterApproved = true;
        }

        if (agreement.proposerApproved && agreement.accepterApproved) {
            // Both approved, release funds
            releaseFunds(agreementID);
            agreement.status = AgreementStatus.APPROVED;
            agreement.approvedAt = block.timestamp;
        } else if (agreement.proposerApproved || agreement.accepterApproved) {
            // Partial approval, funds can be released after 48 hours if no dispute
            // Emit event indicating partial approval
            emit PaymentApproved(agreementID, msg.sender);
        }
    }

    /**
     * @dev Internal function to release funds.
     * @param agreementID Identifier of the agreement.
     */
    function releaseFunds(string memory agreementID) internal nonReentrant {
        Agreement storage agreement = agreements[agreementID];
        require(agreement.status != AgreementStatus.COMPLETED, "Already completed");

        uint256 amount = agreement.offer;
        require(amount > 0, "No funds to release");

        // Get influencer address from DID
        address proposerAddress = didRegistry.getController(abi.encodePacked(agreement.proposingDID));
        require(proposerAddress != address(0), "Invalid proposer address");

        // Transfer USDT to influencer
        usdt.transfer(proposerAddress, amount);

        agreement.status = AgreementStatus.COMPLETED;
        agreement.fulfilledAmount += amount;

        emit FundsReleased(agreementID, amount);
    }

    /**
     * @dev Release funds after 48 hours if only one party approved.
     * Can be called by anyone, as funds are released to the proposer.
     * For production, consider using Chainlink Keepers or similar services.
     * @param agreementID Identifier of the agreement.
     */
    function releaseAfterDelay(string memory agreementID) external nonReentrant {
        Agreement storage agreement = agreements[agreementID];
        require(
            agreement.status == AgreementStatus.APPROVED ||
                agreement.status == AgreementStatus.PENDING,
            "Not in releasable state"
        );
        require(
            block.timestamp >= agreement.approvedAt + 48 hours ||
                (agreement.proposerApproved || agreement.accepterApproved),
            "48 hours not elapsed"
        );

        releaseFunds(agreementID);
    }

    /**
     * @dev File a dispute for an agreement.
     * @param agreementID Identifier of the agreement to dispute.
     */
    function fileDispute(string memory agreementID) external onlyOwner {
        Agreement storage agreement = agreements[agreementID];
        require(agreement.createdAt != 0, "Agreement does not exist");
        require(
            agreement.status != AgreementStatus.COMPLETED &&
                agreement.status != AgreementStatus.DISPUTED,
            "Cannot dispute completed or already disputed agreement"
        );

        agreement.status = AgreementStatus.DISPUTED;
        disputes.push(agreementID);

        emit DisputeFiled(agreementID);
    }

    /**
     * @dev Retrieve disputed agreements.
     * @return Array of disputed agreement IDs.
     */
    function getDisputedAgreements() external view onlyOwner returns (string[] memory) {
        return disputes;
    }

    /**
     * @dev Update the fulfilled amount for an agreement.
     * @param agreementID Identifier of the agreement.
     * @param amount The new fulfilled amount.
     */
    function updateFulfilledAmount(string memory agreementID, uint256 amount) external onlyOwner {
        Agreement storage agreement = agreements[agreementID];
        require(agreement.createdAt != 0, "Agreement does not exist");
        agreement.fulfilledAmount = amount;
    }

    /**
     * @dev Get agreement details.
     * @param agreementID Identifier of the agreement.
     * @return Agreement details.
     */
    function getAgreement(string memory agreementID) external view returns (Agreement memory) {
        require(agreements[agreementID].createdAt != 0, "Agreement does not exist");
        return agreements[agreementID];
    }
}