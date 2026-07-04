// SPDX-License-Identifier: LGPL-3.0-only
pragma solidity 0.8.28;

import "@safe-global/safe-smart-account/contracts/handler/HandlerContext.sol";
import "@safe-global/safe-smart-account/contracts/handler/TokenCallbackHandler.sol";

interface IYieldBasisReceiver {
    function onYieldBasisVeReceived(address from) external;
}

/// @title YieldBasisFallbackHandler
/// @notice Token callback handler extended to notify the Yield Basis depositor when the Safe receives a veNFT.
contract YieldBasisFallbackHandler is TokenCallbackHandler, HandlerContext {
    /// @notice Thrown when the depositor callback reverts.
    error DepositorCallFailed(bytes revertData);

    /// @notice Thrown when a zero address is provided.
    error ZeroAddress();

    /// @notice Thrown when the caller is not the Safe.
    error NotSafe();

    /// @notice Thrown when the appended caller is not the ve token contract.
    error NotVeToken();

    /// @notice Address of the Safe contract.
    address public immutable SAFE;

    /// @notice Address of the depositor that should be called on veNFT receptions.
    address public immutable DEPOSITOR;

    /// @notice Address of the Yield Basis voting escrow contract.
    address public immutable VE_TOKEN;

    constructor(address depositor, address veToken, address safe) {
        require(depositor != address(0) && veToken != address(0) && safe != address(0), ZeroAddress());

        DEPOSITOR = depositor;
        VE_TOKEN = veToken;
        SAFE = safe;
    }

    /// @inheritdoc ERC721TokenReceiver
    function onERC721Received(address, address from, uint, bytes calldata)
        external
        override
        returns (bytes4)
    {
        require(msg.sender == SAFE, NotSafe());
        require(_msgSender() == VE_TOKEN, NotVeToken());

        IYieldBasisReceiver(DEPOSITOR).onYieldBasisVeReceived(from);

        return 0x150b7a02;
    }
}
