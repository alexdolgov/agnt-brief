// SPDX-License-Identifier: MIT

pragma solidity =0.8.24;

interface ITaxProcessor {
    function dispatch() external;
}

interface IDividend {
    function distributeDividend(address[] calldata users) external returns (uint256 successCount);
}

interface IFlapTaxToken {
    function taxSplitter() external view returns (address);
}

interface ITaxSplitter {
    function split() external;
}

/// @title TaxHelper
/// @notice Helper contract for batch operations on TaxProcessor and Dividend contracts, and for triggering tax token split operations via TaxSplitter
/// @dev Allows calling dispatch and distributeDividend functions in batch, and triggering tax token splits using triggerSplit, to save gas and simplify operations
contract TaxHelper {
    uint256 private constant MAX_CALL_GAS = 1_000_000;

    function version() external pure returns (string memory) {
        return "0.0.1";
    }

    /// @notice Enum for batch operation types
    enum OperationType {
        BatchDispatch,
        BatchDistributeDividend,
        TriggerSplit
    }

    /// @notice Emitted when dispatch is called on a TaxProcessor
    event FlapDispatchCalled(address indexed taxProcessor, bool success);

    /// @notice Emitted when distributeDividend is called on a Dividend contract
    event FlapDistributeDividendCalled(address indexed dividend, uint256 successCount);

    /// @notice Emitted when a tax token split is successfully triggered
    event FlapSplitTriggered(address indexed taxToken, address taxSplitter);

    /// @notice Emitted when a tax token split attempt fails
    event FlapSplitFailed(address indexed taxToken, string reason);

    /// @notice Emitted when a batch operation is called, recording the caller
    event FlapBatchOperationCalled(address caller, OperationType operationType);

    /// @notice Struct to store function call information
    struct CallInfo {
        address caller;
        uint64 timestamp;
    }

    /// @notice Mapping to store the latest call info for each function
    /// @dev Key: OperationType enum value
    mapping(OperationType => CallInfo) public latestCallInfo;

    /// @notice Batch call dispatch on multiple TaxProcessor contracts
    /// @param taxProcessors Array of TaxProcessor contract addresses
    /// @return successCount Number of successful dispatch calls
    function batchDispatch(address[] calldata taxProcessors) external returns (uint256 successCount) {
        successCount = 0;
        for (uint256 i = 0; i < taxProcessors.length; i++) {
            try ITaxProcessor(taxProcessors[i]).dispatch{gas: MAX_CALL_GAS}() {
                emit FlapDispatchCalled(taxProcessors[i], true);
                successCount++;
            } catch {
                emit FlapDispatchCalled(taxProcessors[i], false);
            }
        }
        latestCallInfo[OperationType.BatchDispatch] = CallInfo(msg.sender, uint64(block.timestamp));
        emit FlapBatchOperationCalled(msg.sender, OperationType.BatchDispatch);
        return successCount;
    }

    /// @notice Batch call distributeDividend on multiple Dividend contracts
    /// @param dividends Array of Dividend contract addresses
    /// @param usersList Array of user address arrays (one for each Dividend contract)
    /// @return successCounts Array of success counts for each Dividend contract
    function batchDistributeDividend(address[] calldata dividends, address[][] calldata usersList)
        external
        returns (uint256[] memory successCounts)
    {
        require(dividends.length == usersList.length, "TaxHelper: length mismatch");

        successCounts = new uint256[](dividends.length);

        for (uint256 i = 0; i < dividends.length; i++) {
            try IDividend(dividends[i]).distributeDividend(usersList[i]) returns (uint256 count) {
                successCounts[i] = count;
                emit FlapDistributeDividendCalled(dividends[i], count);
            } catch {
                successCounts[i] = 0;
                emit FlapDistributeDividendCalled(dividends[i], 0);
            }
        }

        latestCallInfo[OperationType.BatchDistributeDividend] = CallInfo(msg.sender, uint64(block.timestamp));
        emit FlapBatchOperationCalled(msg.sender, OperationType.BatchDistributeDividend);
        return successCounts;
    }

    /// @notice Triggers the split function on the tax splitters of the provided tax tokens
    /// @param taxTokens Array of tax token addresses to trigger splits for
    /// @dev This function attempts to call the split method on each tax token's splitter
    /// @dev Reverts are ignored - if any tax token fails, others will still be processed
    function triggerSplit(address[] calldata taxTokens) external {
        for (uint256 i = 0; i < taxTokens.length; i++) {
            try this._triggerSingleSplit(taxTokens[i]) {
                // Success - emit success event
                address taxSplitterAddress = IFlapTaxToken(taxTokens[i]).taxSplitter();
                emit FlapSplitTriggered(taxTokens[i], taxSplitterAddress);
            } catch Error(string memory reason) {
                // Emit failure event with reason
                emit FlapSplitFailed(taxTokens[i], reason);
            } catch (bytes memory) {
                // Emit failure event with generic message for low-level failures
                emit FlapSplitFailed(taxTokens[i], "Low-level call failed");
            }
        }
        latestCallInfo[OperationType.TriggerSplit] = CallInfo(msg.sender, uint64(block.timestamp));
        emit FlapBatchOperationCalled(msg.sender, OperationType.TriggerSplit);
    }

    /// @notice Internal function to trigger split for a single tax token
    /// @param taxToken Address of the tax token
    /// @dev This is an external function that's called via try/catch to isolate failures
    function _triggerSingleSplit(address taxToken) external {
        // Get the tax splitter address from the tax token
        address taxSplitterAddress = IFlapTaxToken(taxToken).taxSplitter();

        // Call the split method on the tax splitter
        ITaxSplitter(payable(taxSplitterAddress)).split{gas: MAX_CALL_GAS}();
    }

    
}
