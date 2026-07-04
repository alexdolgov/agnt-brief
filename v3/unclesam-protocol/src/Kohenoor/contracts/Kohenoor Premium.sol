// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";

/// @title Kohenoor (KEN)
/// @notice Fixed-supply ERC20 with timelocked website metadata, 2-step ownership transfer, and rescue functions.
/// No mint/burn/pause/tax.
contract Kohenoor is ERC20, Ownable2Step {
    using SafeERC20 for IERC20;

    // --- Constants ---
    address public constant SAFE_WALLET   = 0x47865542D29d3a93FEC6a55F145c89E6846Bf1A0; // your Safe
    uint256 public constant TOTAL_SUPPLY  = 101_966 * 1e18; // 101,966 KEN
    uint256 public constant WEBSITE_DELAY = 1 days;

    // --- Minimal on-chain metadata ---
    string public website = "https://www.kohenoor.tech";

    // Timelocked website update
    string  private _pendingWebsite;
    uint256 private _pendingWebsiteEta;
    bool    public websiteLocked;

    // --- Events ---
    event WebsiteUpdateScheduled(string newWebsite, uint256 eta);
    event WebsiteUpdateCancelled();
    event WebsiteUpdated(string oldWebsite, string newWebsite);
    event WebsiteLockedForever();
    event RescueERC20(address indexed token, address indexed to, uint256 amount);
    event RescueETH(address indexed to, uint256 amount);

    // --- Constructor ---
    // Option A (direct Safe as initial owner; requires OZ v5):
    constructor() ERC20("Kohenoor", "KEN") Ownable(SAFE_WALLET) {
        _mint(SAFE_WALLET, TOTAL_SUPPLY);
    }

    // Option B (if you prefer deployer as temp owner; uncomment and remove the constructor above):
    // constructor() ERC20("Kohenoor", "KEN") Ownable(msg.sender) {
    //     _mint(SAFE_WALLET, TOTAL_SUPPLY);
    //     transferOwnership(SAFE_WALLET);
    // }

    // --- Website timelock flow ---
    /// @notice Schedule a website update, executable after WEBSITE_DELAY.
    function scheduleWebsite(string calldata newWebsite) external onlyOwner {
        require(!websiteLocked, "Website locked");
        uint256 eta = block.timestamp + WEBSITE_DELAY;
        _pendingWebsite = newWebsite;
        _pendingWebsiteEta = eta;
        emit WebsiteUpdateScheduled(newWebsite, eta);
    }

    /// @notice Cancel a scheduled website update.
    function cancelScheduledWebsite() external onlyOwner {
        require(_pendingWebsiteEta != 0, "Nothing scheduled");
        delete _pendingWebsite;
        delete _pendingWebsiteEta;
        emit WebsiteUpdateCancelled();
    }

    /// @notice Execute the scheduled website update after delay.
    function executeScheduledWebsite() external onlyOwner {
        require(!websiteLocked, "Website locked");
        uint256 eta = _pendingWebsiteEta;
        require(eta != 0, "Nothing scheduled");
        require(block.timestamp >= eta, "Too early");
        string memory old = website;
        website = _pendingWebsite;
        delete _pendingWebsite;
        delete _pendingWebsiteEta;
        emit WebsiteUpdated(old, website);
    }

    /// @notice Lock website forever (no further changes).
    function lockWebsiteForever() external onlyOwner {
        require(!websiteLocked, "Already locked");
        websiteLocked = true;
        // Clear pending, if any
        if (_pendingWebsiteEta != 0) {
            delete _pendingWebsite;
            delete _pendingWebsiteEta;
            emit WebsiteUpdateCancelled();
        }
        emit WebsiteLockedForever();
    }

    // --- Admin safety: disable renounce to avoid accidents ---
    function renounceOwnership() public view override onlyOwner {
    revert("renounceOwnership disabled");
}

    // --- Rescue functions ---
    /// @notice Recover ERC20 tokens sent here by mistake (not KEN).
    function rescueERC20Safe(address token, address to, uint256 amount) external onlyOwner {
        require(token != address(this), "Cannot rescue KEN");
        require(to != address(0), "to zero");
        IERC20(token).safeTransfer(to, amount);
        emit RescueERC20(token, to, amount);
    }

    /// @notice Recover native ETH sent here by mistake (e.g., via selfdestruct).
    function rescueETH(address to, uint256 amount) external onlyOwner {
        require(to != address(0), "to zero");
        (bool ok, ) = payable(to).call{value: amount}("");
        require(ok, "ETH transfer failed");
        emit RescueETH(to, amount);
    }

    // Reject accidental ETH
    receive() external payable { revert("No ETH accepted"); }
    fallback() external payable { revert("No ETH accepted"); }
}
