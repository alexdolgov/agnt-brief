// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {FlapTaxToken} from "../FlapTaxToken.sol";
import {TaxSplitter} from "../TaxSplitter.sol";

/// @notice A utility contract to trigger splits on multiple tax tokens
/// @dev This contract provides a way to batch call split() on multiple tax token splitters
contract TaxSplitterHelper {
    /// @notice Emitted when a tax token split is successfully triggered
    /// @param taxToken The address of the tax token
    /// @param taxSplitter The address of the tax splitter that was called
    event SplitTriggered(address taxToken, address taxSplitter);

    /// @notice Emitted when a tax token split attempt fails
    /// @param taxToken The address of the tax token
    /// @param reason The revert reason (if available)
    event SplitFailed(address taxToken, string reason);

    /// @notice Triggers the split function on the tax splitters of the provided tax tokens
    /// @param taxTokens Array of tax token addresses to trigger splits for
    /// @dev This function attempts to call the split method on each tax token's splitter
    /// @dev Reverts are ignored - if any tax token fails, others will still be processed
    function triggerSplit(address[] calldata taxTokens) external {
        for (uint256 i = 0; i < taxTokens.length; i++) {
            try this._triggerSingleSplit(taxTokens[i]) {
                // Success - emit success event
                address taxSplitterAddress = FlapTaxToken(taxTokens[i]).taxSplitter();
                emit SplitTriggered(taxTokens[i], taxSplitterAddress);
            } catch Error(string memory reason) {
                // Emit failure event with reason
                emit SplitFailed(taxTokens[i], reason);
            } catch (bytes memory) {
                // Emit failure event with generic message for low-level failures
                emit SplitFailed(taxTokens[i], "Low-level call failed");
            }
        }
    }

    /// @notice Internal function to trigger split for a single tax token
    /// @param taxToken Address of the tax token
    /// @dev This is an external function that's called via try/catch to isolate failures
    function _triggerSingleSplit(address taxToken) external {
        // Get the tax splitter address from the tax token
        address taxSplitterAddress = FlapTaxToken(taxToken).taxSplitter();
        
        // Call the split method on the tax splitter
        TaxSplitter(payable(taxSplitterAddress)).split();
    }
}
