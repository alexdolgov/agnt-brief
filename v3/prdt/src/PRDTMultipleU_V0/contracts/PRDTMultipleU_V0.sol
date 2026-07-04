// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

//prediction contracts are owned by the PredictionFactory contract
contract PRDTMultipleU_V0 is
    Initializable,
    PausableUpgradeable,
    OwnableUpgradeable,
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable
{
    uint256 public currentEpoch;

    function _isContract(address addr) internal view returns (bool) {
        uint256 size;
        assembly {
            size := extcodesize(addr)
        }
        return size > 0;
    }

    modifier notContract() {
        require(!_isContract(msg.sender), "no contract");
        require(msg.sender == tx.origin, "no proxy contract");
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    function initialize() public initializer {
        __Pausable_init();
        __Ownable_init();
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();
        currentEpoch = 1;
    }

    function version() public pure returns (string memory) {
        return "v0";
    }

    function _authorizeUpgrade(
        address newImplementation
    ) internal override onlyOwner {}

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() external onlyOwner whenPaused {
        _unpause();
    }

    // ----- USER FUNCTIONS

    function getBet(
        address user,
        uint256 predictionId,
        uint256 epoch
    ) external view returns (uint8 position, uint256 amount, bool claimed) {}

    function getRound(
        uint256 predictionId,
        uint256 epoch
    )
        external
        view
        returns (
            bool completed,
            bool canceled,
            uint256 totalAmount,
            uint256 bullAmount,
            uint256 bearAmount,
            int256 lockPrice,
            int256 closePrice
        )
    {}

    function betBull(
        uint256 predictionId,
        uint256 epoch
    ) external payable whenNotPaused nonReentrant notContract {}

    function betBear(
        uint256 predictionId,
        uint256 epoch
    ) external payable whenNotPaused nonReentrant notContract {}

    function claimFor(
        address userAddress,
        uint256[] calldata predictions,
        uint256[] calldata epochs
    ) external nonReentrant notContract {}

    function claim(
        uint256[] calldata predictions,
        uint256[] calldata epochs
    ) external nonReentrant notContract {}

    function claimable(
        uint256 predictionId,
        uint256 epoch,
        address user
    ) public view returns (bool) {}

    /**
     * @dev Get the refundable stats of specific epoch and user account
     */
    function refundable(
        uint256 predictionId,
        uint256 epoch,
        address user
    ) public view returns (bool) {}
}
