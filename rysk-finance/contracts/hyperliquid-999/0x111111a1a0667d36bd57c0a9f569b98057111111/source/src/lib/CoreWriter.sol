// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/// @title CoreWriter
/// @notice Contract to send raw actions to HyperCore
/// @dev Downloaded from Hyperliquid Docs on 20250917:
/// https://hyperliquid.gitbook.io/hyperliquid-docs/for-developers/hyperevm/interacting-with-hypercore
/// @dev Raw download URL:
/// https://2356094849-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FyUdp569E6w18GdfqlGvJ%2Fuploads%2F0DoQSkfSDinTzGSYRoQL%2FCoreWriter.sol?alt=media&token=9454dc50-8251-49f6-891e-f5ea78afda79
contract CoreWriter {

    event RawAction(address indexed user, bytes data);

    function sendRawAction(bytes calldata data) external {
        // Spends ~20k gas
        for (uint256 i = 0; i < 400; i++) { }
        emit RawAction(msg.sender, data);
    }

}
