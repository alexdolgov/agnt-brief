// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface ICoreWriter {
    function sendRawAction(bytes calldata data) external;
}

/**
 * @title CoreWithdrawTest
 * @notice Minimal contract to test pulling funds from HyperCore → HyperEVM via CoreWriter's spotSend action.
 *
 * Usage:
 *  1. Deploy this contract on HyperEVM.
 *  2. Fund the contract's Core account (send tokens to this contract's address on Core).
 *  3. Call `withdrawToEvm(tokenIndex, coreAmount)` — this calls spotSend to the system address,
 *     which triggers HyperCore to credit the tokens to this contract on HyperEVM.
 *  4. Call `sweepERC20(token, to)` to transfer the EVM tokens out.
 */
contract CoreWithdrawTest {
    // HyperCore precompiles & addresses
    address constant CORE_WRITER = 0x3333333333333333333333333333333333333333;
    address constant SPOT_BALANCE_PRECOMPILE = 0x0000000000000000000000000000000000000801;
    address constant HYPE_SYSTEM_ADDRESS = 0x2222222222222222222222222222222222222222;
    uint160 constant BASE_SYSTEM_ADDRESS = uint160(0x2000000000000000000000000000000000000000);

    // CoreWriter action headers
    bytes4 constant SPOT_SEND_HEADER = 0x01000006; // version=1, action=6 (spotSend)
    bytes4 constant USD_CLASS_TRANSFER_HEADER = 0x01000007; // version=1, action=7 (usdClassTransfer)
    bytes4 constant SEND_ASSET_TO_DEX_HEADER = 0x0100000D; // version=1, action=13 (sendAssetToDex)

    uint32 constant CORE_SPOT_DEX_ID = type(uint32).max;

    address public owner;

    event WithdrawToEvm(uint64 indexed tokenIndex, uint64 coreAmount, address systemAddress);
    event PerpToSpot(uint64 coreAmount);
    event DexTransfer(uint64 indexed tokenIndex, uint64 coreAmount, uint32 sourceDex, uint32 destinationDex);
    event Swept(address indexed token, address indexed to, uint256 amount);

    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    /**
     * @notice Withdraw tokens from this contract's Core balance to its EVM balance via spotSend.
     * @param tokenIndex The HyperCore token index (e.g., 0 for USDC).
     * @param coreAmount The amount in Core units (wei decimals on Core).
     */
    function withdrawToEvm(uint64 tokenIndex, uint64 coreAmount) external onlyOwner {
        address systemAddr = _getSystemAddress(tokenIndex);

        // spotSend: sends tokens from this contract on Core → systemAddress on Core,
        // which triggers HyperCore to credit the EVM side.
        bytes memory payload = abi.encodePacked(SPOT_SEND_HEADER, abi.encode(systemAddr, tokenIndex, coreAmount));

        ICoreWriter(CORE_WRITER).sendRawAction(payload);

        emit WithdrawToEvm(tokenIndex, coreAmount, systemAddr);
    }

    /**
     * @notice Transfer USD from perp balance to spot balance on Core (usdClassTransfer).
     * @param coreAmount The amount in Core units to move from perp → spot.
     */
    function withdrawPerpToSpot(uint64 coreAmount) external onlyOwner {
        bytes memory payload = abi.encodePacked(
            USD_CLASS_TRANSFER_HEADER,
            abi.encode(coreAmount, false) // toPerp = false → perp to spot
        );

        ICoreWriter(CORE_WRITER).sendRawAction(payload);

        emit PerpToSpot(coreAmount);
    }

    /**
     * @notice Transfer any asset between dexes on Core (e.g., perp dex → spot dex).
     * @param tokenIndex The HyperCore token index.
     * @param coreAmount The amount in Core units.
     * @param sourceDex The source dex id (e.g., 0 for default perp dex).
     * @param destinationDex The destination dex id (type(uint32).max for spot dex).
     */
    function transferBetweenDexes(
        uint64 tokenIndex,
        uint64 coreAmount,
        uint32 sourceDex,
        uint32 destinationDex
    ) external onlyOwner {
        bytes memory payload = abi.encodePacked(
            SEND_ASSET_TO_DEX_HEADER,
            abi.encode(address(this), address(0), sourceDex, destinationDex, tokenIndex, coreAmount)
        );

        ICoreWriter(CORE_WRITER).sendRawAction(payload);

        emit DexTransfer(tokenIndex, coreAmount, sourceDex, destinationDex);
    }

    /**
     * @notice Check this contract's spot balance on HyperCore.
     * @param tokenIndex The HyperCore token index.
     * @return total The total spot balance on Core.
     */
    function coreBalance(uint64 tokenIndex) external view returns (uint64 total) {
        (bool success, bytes memory result) = SPOT_BALANCE_PRECOMPILE.staticcall(abi.encode(address(this), tokenIndex));
        require(success, "spotBalance precompile failed");
        // SpotBalance struct: (uint64 total, uint64 hold, uint64 entryNtl)
        (total, , ) = abi.decode(result, (uint64, uint64, uint64));
    }

    /**
     * @notice Check this contract's EVM balance of a token.
     */
    function evmBalance(address token) external view returns (uint256) {
        return IERC20(token).balanceOf(address(this));
    }

    /**
     * @notice Sweep ERC20 tokens from this contract's EVM balance to `to`.
     */
    function sweepERC20(address token, address to) external onlyOwner {
        uint256 bal = IERC20(token).balanceOf(address(this));
        require(bal > 0, "nothing to sweep");
        IERC20(token).transfer(to, bal);
        emit Swept(token, to, bal);
    }

    /**
     * @notice Sweep native HYPE from this contract.
     */
    function sweepHYPE(address payable to) external onlyOwner {
        uint256 bal = address(this).balance;
        require(bal > 0, "nothing to sweep");
        (bool success, ) = to.call{ value: bal }("");
        require(success, "HYPE transfer failed");
    }

    function _getSystemAddress(uint64 tokenIndex) internal view returns (address) {
        // HYPE uses a special system address; all other tokens use BASE + index
        if (tokenIndex == _hypeTokenIndex()) {
            return HYPE_SYSTEM_ADDRESS;
        }
        return address(BASE_SYSTEM_ADDRESS + tokenIndex);
    }

    function _hypeTokenIndex() internal view returns (uint64) {
        // Testnet (chainid 998) uses 1105, mainnet uses 150
        return block.chainid == 998 ? 1105 : 150;
    }

    receive() external payable {}
}
