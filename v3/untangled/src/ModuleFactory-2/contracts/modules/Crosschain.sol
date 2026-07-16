// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

import {UtilsLib} from "../libraries/UtilsLib.sol";
import {IVault} from "../interfaces/IVault.sol";
import {ICrosschainModule} from "../interfaces/ICrosschainModule.sol";
import {IValuationModule} from "../interfaces/IValuationModule.sol";

import {IAxelarGateway} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IAxelarGateway.sol";
import {IAxelarGasService} from "@axelar-network/axelar-gmp-sdk-solidity/contracts/interfaces/IAxelarGasService.sol";

contract Crosschain is ICrosschainModule {
    mapping(uint256 => address) public remoteTreasury;
    mapping(address => bool) public hookWhitelist;
    mapping(address => bool) public oracleWhitelist;
    mapping(uint => bool) public chainWhitelist;

    address public immutable vault;
    IAxelarGateway immutable gateway;
    IAxelarGasService immutable gasService;

    constructor(address _vault, address _gateway, address _gasService) {
        vault = _vault;
        gateway = IAxelarGateway(_gateway);
        gasService = IAxelarGasService(_gasService);
    }

    modifier onlyValuationModule() {
        (, address valuationModule, , , ) = IVault(vault).getModules();

        require(msg.sender == valuationModule, "Only Valuation module");
        _;
    }

    modifier onlyTreasury() {
        require(
            msg.sender == IVault(vault).getTreasury(),
            "AsyncWithdraw: Only Treasury"
        );
        _;
    }

    function requestUpdateAsset(
        address asset,
        address oracle,
        uint256 chainId
    ) external payable onlyValuationModule {
        if (!oracleWhitelist[oracle]) oracleWhitelist[oracle] = true;
        if (!chainWhitelist[chainId]) chainWhitelist[chainId] = true;
        bytes memory payload = abi.encode(asset, remoteTreasury[chainId]);

        string memory chainName = getChainName(chainId);

        gasService.payNativeGasForContractCall{value: msg.value}(
            address(this),
            chainName,
            UtilsLib.toString(oracle),
            payload,
            msg.sender
        );

        gateway.callContract(chainName, UtilsLib.toString(oracle), payload);
    }

    function execute(
        bytes32 commandId,
        string calldata sourceChain,
        string calldata sourceAddress,
        bytes calldata payload
    ) external {
        bytes32 payloadHash = keccak256(payload);

        if (
            !gateway.validateContractCall(
                commandId,
                sourceChain,
                sourceAddress,
                payloadHash
            )
        ) revert NotApprovedByGateway();

        _execute(sourceChain, sourceAddress, payload);
    }

    /**
     * @notice logic to be executed on dest chain
     * @dev this is triggered automatically by relayer
     * @param _sourceChain blockchain where tx is originating from
     * @param _sourceAddress address on src chain where tx is originating from
     * @param _payload encoded gmp message sent from src chain
     */
    function _execute(
        string calldata _sourceChain,
        string calldata _sourceAddress,
        bytes calldata _payload
    ) internal {
        address srcAddress = UtilsLib.toAddress(_sourceAddress);
        uint256 chainId = getChainId(_sourceChain);

        (, address valuationModule, , , ) = IVault(vault).getModules();

        if (oracleWhitelist[srcAddress] && chainWhitelist[chainId]) {
            (
                address asset,
                uint256 balance,
                uint256 price,
                uint8 decimals
            ) = abi.decode(_payload, (address, uint256, uint256, uint8));

            IValuationModule(valuationModule).fulfillUpdateRequest(
                asset,
                balance,
                price,
                decimals
            );
            return;
        }

        if (hookWhitelist[srcAddress]) {
            (address receiver, address assetAddress, uint256 assets) = abi
                .decode(_payload, (address, address, uint256));

            uint256 shares = IERC4626(vault).convertToShares(assets);

            IVault(vault).forceMint(receiver, shares);
            IValuationModule(valuationModule).forceUpdate(assetAddress, assets);

            emit CrosschainDeposit(assetAddress, assets, receiver, chainId);

            return;
        }

        revert InvalidSourceAddress();
    }

    function setRemoteTreasury(
        uint chainId,
        address newRemoteTreasury
    ) external onlyTreasury {
        remoteTreasury[chainId] = newRemoteTreasury;
        emit NewRemoteTreasury(newRemoteTreasury, chainId, block.timestamp);
    }

    function setCrosschainHookWhitelist(
        address hookAddress,
        bool state
    ) external onlyTreasury {
        if (hookWhitelist[hookAddress] == state) revert AlreadySet();
        hookWhitelist[hookAddress] = state;
        emit CrosschainHookUpdated(hookAddress, state, block.timestamp);
    }

    function getChainName(
        uint chainId
    ) public pure returns (string memory chainName) {
        if (chainId == 42161) return "arbitrum";
        if (chainId == 421614) return "arbitrum-sepolia";

        if (chainId == 137) return "Polygon";
        if (chainId == 80002) return "polygon-sepolia";

        if (chainId == 1) return "Ethereum";
        if (chainId == 11155111) return "ethereum-sepolia";

        if (chainId == 8453) return "base";
        if (chainId == 84532) return "base-sepolia";
    }

    function getChainId(string memory chainName) public pure returns (uint) {
        if (
            keccak256(abi.encode(chainName)) ==
            keccak256(abi.encode("arbitrum"))
        ) return 42161;
        if (
            keccak256(abi.encode(chainName)) ==
            keccak256(abi.encode("arbitrum-sepolia"))
        ) return 421614;

        if (
            keccak256(abi.encode(chainName)) == keccak256(abi.encode("Polygon"))
        ) return 137;
        if (
            keccak256(abi.encode(chainName)) ==
            keccak256(abi.encode("polygon-sepolia"))
        ) return 80002;

        if (
            keccak256(abi.encode(chainName)) ==
            keccak256(abi.encode("Ethereum"))
        ) return 1;
        if (
            keccak256(abi.encode(chainName)) ==
            keccak256(abi.encode("ethereum-sepolia"))
        ) return 11155111;

        if (keccak256(abi.encode(chainName)) == keccak256(abi.encode("base")))
            return 8453;
        if (
            keccak256(abi.encode(chainName)) ==
            keccak256(abi.encode("base-sepolia"))
        ) return 84532;

        return 0;
    }
}
