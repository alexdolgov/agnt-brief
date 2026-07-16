/// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.19;

/// External Libraries.
import "solady/src/tokens/ERC20.sol";
import "solady/src/utils/SafeTransferLib.sol";

/// Project Interfaces & Contracts.
import "src/Token.sol";
import "src/interfaces/IMasterchef.sol";

/// @title InflationReceiver
/// @notice Receive SDT from the Masterchef and distribute it the recipients.
contract InflationReceiver {
    /// @notice Recipient share.
    /// @param recipient Address of the recipient
    /// @param weight Weight of the recipient
    struct RecipientShare {
        address recipient;
        uint256 weight;
    }

    /// @notice 100% = 1e18
    uint256 public constant TOTAL_BPS = 1e18;

    /// @notice Address of the SDT contract.
    address public constant SDT = 0x73968b9a57c6E53d41345FD57a6E6ae27d6CDB2F;

    /// @notice Address of the Masterchef contract.
    address public constant MASTERCHEF = 0xfEA5E213bbD81A8a94D0E1eDB09dBD7CEab61e1c;

    /// @notice Address of the token contract stake in the Masterchef.
    address public immutable token;

    /// @notice Pool id of the token in the Masterchef.
    uint256 public pid;

    /// @notice Address of the governance.
    address public governance;

    /// @notice Address of the future governance for two-step governance transfer.
    address public futureGovernance;

    /// @notice Total distributed rewards.
    uint256 public distributed;

    /// @notice Maximum distribution allowed.
    uint256 public maxDistribution;

    /// @notice Array of RecipientShare storing the recipients and their share.
    RecipientShare[] public recipients;

    error Governance();
    error NoRecipients();
    error NotInitialized();
    error ZeroWeightError();
    error ZeroAddressError();
    error AlreadyInitialized();
    error InvalidTotalWeightError();

    modifier onlyGovernance() {
        if (msg.sender != governance) {
            revert Governance();
        }
        _;
    }

    constructor() {
        token = address(new Token());
        maxDistribution = 5_682_500e18;

        governance = msg.sender;
    }

    /// @notice Initialize the contract with the pid.
    /// The token must be added to the Masterchef before calling this function.
    function initialize(uint256 _pid) external onlyGovernance {
        if (pid != 0) revert AlreadyInitialized();

        pid = _pid;

        uint256 _balance = ERC20(token).balanceOf(address(this));

        SafeTransferLib.safeApprove(token, MASTERCHEF, _balance);
        IMasterchef(MASTERCHEF).deposit(pid, _balance);
    }

    /// @notice Distribute the rewards to the recipients.
    function distribute() public {
        if (pid == 0) return;
        if (recipients.length == 0) return;

        /// Trigger the claim.
        IMasterchef(MASTERCHEF).deposit(pid, 0);

        /// Cache the pending rewards.
        uint256 pending = ERC20(SDT).balanceOf(address(this));

        if (distributed + pending > maxDistribution) {
            pending = maxDistribution - distributed;

            /// Send the remaining rewards to the owner.
            SafeTransferLib.safeTransfer(SDT, governance, ERC20(SDT).balanceOf(address(this)) - pending);
        }

        /// Update the distributed rewards.
        distributed += pending;

        /// Distribute the rewards.
        for (uint256 i = 0; i < recipients.length; i++) {
            uint256 _amount = pending * recipients[i].weight / TOTAL_BPS;
            SafeTransferLib.safeTransfer(SDT, recipients[i].recipient, _amount);
        }
    }

    /// @notice Allocate the shares to the recipients
    /// To update the recipients, we need to delete the existing recipients and push the new recipients.
    /// @param _contributors Array of RecipientShare
    function allocate(RecipientShare[] memory _contributors) external onlyGovernance {
        uint256 _count = _contributors.length;
        uint256 _totalWeight = 0;

        for (uint256 i = 0; i < _count; i++) {
            address _recipient = _contributors[i].recipient;
            uint256 _weight = _contributors[i].weight;

            if (_recipient == address(0)) {
                revert ZeroAddressError();
            }

            if (_weight == 0) {
                revert ZeroWeightError();
            }

            _totalWeight = _totalWeight + _weight;
        }

        if (_totalWeight != TOTAL_BPS) {
            revert InvalidTotalWeightError();
        }

        /// Distribute pending rewards before updating the recipients.
        distribute();

        /// Make sure to delete recipients before pushing new recipients.
        delete recipients;

        /// Solidity doesn't support Struct copy, so we need to push each element.
        for (uint256 i = 0; i < _count; i++) {
            address _recipient = _contributors[i].recipient;
            uint256 _weight = _contributors[i].weight;

            recipients.push(RecipientShare(_recipient, _weight));
        }
    }

    function getRecipients() external view returns (RecipientShare[] memory) {
        return recipients;
    }

    function recipientsCount() external view returns (uint256) {
        return recipients.length;
    }

    function recipientInfo(uint256 _index) external view returns (RecipientShare memory) {
        return recipients[_index];
    }

    /// @notice Get the left amount of SDT allowed to distribute.
    function leftToDistribute() external view returns (uint256) {
        return maxDistribution - distributed;
    }

    /// @notice Update the maximum distribution allowed.
    /// @param _maxDistribution Maximum distribution allowed
    function updateMaxDistribution(uint256 _maxDistribution) external onlyGovernance {
        maxDistribution = _maxDistribution;
    }

    /// @notice Transfer the governance to the new address.
    /// @param _governance Address of the new governance
    function transferGovernance(address _governance) external onlyGovernance {
        futureGovernance = _governance;
    }

    /// @notice Accept the governance
    function acceptGovernance() external {
        if (msg.sender != futureGovernance) {
            revert Governance();
        }

        governance = futureGovernance;

        delete futureGovernance;
    }
}
