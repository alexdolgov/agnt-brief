//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.20;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
// import "@openzeppelin/contracts/proxy/utils/UUPSUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";

// Interface for OApp contracts (both OFT and OFTAdapter inherit from OAppCore)
interface IOAppCoreMethods {
    function setPeer(uint32 _eid, bytes32 _peer) external;
    function setDelegate(address _delegate) external;
}

contract PremarketOFTFactory is
    Initializable,
    OwnableUpgradeable,
    AccessControlUpgradeable,
    ReentrancyGuardUpgradeable
{
    bytes32 public constant OPERATOR_ROLE = keccak256("OPERATOR_ROLE");
    bytes32 public constant ADMIN_ROLE = keccak256("ADMIN_ROLE");

    /// @notice LayerZero endpoint address
    address public lzEndpoint;

    /// @notice Creation code for CREATE2 deployments
    bytes public oftCreationCode;
    bytes public oftAdapterCreationCode;
    bytes public nativeOftAdapterCreationCode;

    /**
     * @notice Emitted when a new OFT contract is deployed
     * @param tokenId PreMarket token ID
     * @param oftAddress Deployed OFT on destination chain
     * @param wrappedTokenName Name of the wrapped OFT token
     * @param wrappedTokenSymbol Symbol of the wrapped OFT token
     * @param chainId Chain ID where the OFT is deployed
     * @param initCodeHash Hash of the init code (creation code + constructor args) used for CREATE2
     * @dev oftAddress is used to bridge token address dest -> src
     */
    event OFTCreated(
        bytes32 indexed tokenId,
        address indexed oftAddress,
        string wrappedTokenName,
        string wrappedTokenSymbol,
        uint256 chainId,
        bytes32 initCodeHash
    );

    /**
     * @notice Emitted when a new OFTAdapter contract is deployed
     * @param tokenId PreMarket token ID
     * @param tokenAddress Original token address
     * @param adapterAddress Wrap token of token address
     * @param chainId Chain ID where the adapter is deployed
     * @param initCodeHash Hash of the init code (creation code + constructor args) used for CREATE2
     * @dev adapterAddress is used to bridge token address src -> dest
     */
    event OFTAdapterCreated(
        bytes32 indexed tokenId,
        address indexed tokenAddress,
        address indexed adapterAddress,
        uint256 chainId,
        bytes32 initCodeHash
    );

    /**
     * @notice Emitted when a new NativeOFTAdapter contract is deployed
     * @param tokenId PreMarket token ID
     * @param adapterAddress Wrap token for native currency
     * @param localDecimals Number of decimals for native token
     * @param chainId Chain ID where the adapter is deployed
     * @param initCodeHash Hash of the init code (creation code + constructor args) used for CREATE2
     * @dev adapterAddress is used to bridge native token address src -> dest
     */
    event NativeOFTAdapterCreated(
        bytes32 indexed tokenId,
        address indexed adapterAddress,
        uint8 localDecimals,
        uint256 chainId,
        bytes32 initCodeHash
    );

    event OAppDelegateSet(
        address indexed oappAddress,
        address indexed delegate
    );
    event OAppPeerSet(
        address indexed oappAddress,
        uint32 indexed eid,
        bytes32 peer
    );
    event LzEndpointSet(address indexed lzEndpoint);

    function initialize(address _lzEndpoint) public initializer {
        __Ownable_init(msg.sender);
        __AccessControl_init();
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(ADMIN_ROLE, msg.sender);
        _grantRole(OPERATOR_ROLE, msg.sender);
        __ReentrancyGuard_init();

        // init value
        lzEndpoint = _lzEndpoint;
    }

    /**
     * @notice Set LayerZero endpoint address (Owner only)
     * @param _lzEndpoint Address of the LayerZero endpoint contract on the current chain
     */
    function setLzEndpoint(address _lzEndpoint) external onlyRole(ADMIN_ROLE) {
        lzEndpoint = _lzEndpoint;
        emit LzEndpointSet(_lzEndpoint);
    }

    /**
     * @notice Set creation code for MyOFT contract (Admin only)
     * @param _oftCreationCode Creation code for MyOFT contract
     */
    function setOFTCreationCode(
        bytes calldata _oftCreationCode
    ) external onlyRole(ADMIN_ROLE) {
        oftCreationCode = _oftCreationCode;
    }

    /**
     * @notice Set creation code for MyOFTAdapter contract (Admin only)
     * @param _oftAdapterCreationCode Creation code for MyOFTAdapter contract
     */
    function setOFTAdapterCreationCode(
        bytes calldata _oftAdapterCreationCode
    ) external onlyRole(ADMIN_ROLE) {
        oftAdapterCreationCode = _oftAdapterCreationCode;
    }

    /**
     * @notice Set creation code for MyNativeOFTAdapter contract (Admin only)
     * @param _nativeOftAdapterCreationCode Creation code for MyNativeOFTAdapter contract
     */
    function setNativeOFTAdapterCreationCode(
        bytes calldata _nativeOftAdapterCreationCode
    ) external onlyRole(ADMIN_ROLE) {
        nativeOftAdapterCreationCode = _nativeOftAdapterCreationCode;
    }

    /**
     * @notice Deploy a new OFT contract using CREATE2
     * @dev This function deploys a new MyOFT contract using CREATE2 for deterministic addresses
     * @param tokenId PreMarket token ID (bytes32) - used as salt for CREATE2
     * @param wrappedTokenName Name for the wrapped OFT token (e.g., "Wrapped MON (Whales Market)")
     * @param wrappedTokenSymbol Symbol for the wrapped OFT token (e.g., "WMON")
     * @return deployed Address of the newly deployed OFT contract
     * @dev Requires:
     *      - Caller must have OPERATOR_ROLE
     *      - oftCreationCode must be set
     *      - lzEndpoint must be set
     *      - wrappedTokenName and wrappedTokenSymbol must not be empty
     * @dev The deployed OFT will have PremarketOFTFactory as its delegate
     * @dev Chain ID is automatically obtained from block.chainid
     * @dev Emits OFTCreated with initCodeHash
     */
    function deployOFT(
        bytes32 tokenId,
        string calldata wrappedTokenName,
        string calldata wrappedTokenSymbol
    ) external onlyRole(OPERATOR_ROLE) returns (address deployed) {
        deployed = _deployOFT(tokenId, wrappedTokenName, wrappedTokenSymbol);
    }

    /// @dev Core OFT deployment logic shared by deployOFT and deployOFTAndSetPeer.
    function _deployOFT(
        bytes32 tokenId,
        string memory wrappedTokenName,
        string memory wrappedTokenSymbol
    ) internal returns (address deployed) {
        require(oftCreationCode.length != 0, "OFT_CODE_NOT_SET");
        require(lzEndpoint != address(0), "LzEndpoint not set");
        require(bytes(wrappedTokenName).length > 0, "Empty name");
        require(bytes(wrappedTokenSymbol).length > 0, "Empty symbol");

        bytes memory initCode = abi.encodePacked(
            oftCreationCode,
            abi.encode(wrappedTokenName, wrappedTokenSymbol, lzEndpoint, address(this))
        );

        deployed = _deployCreate2(initCode, tokenId);

        emit OFTCreated(
            tokenId,
            deployed,
            wrappedTokenName,
            wrappedTokenSymbol,
            block.chainid,
            keccak256(initCode)
        );
    }

    /**
     * @notice Internal: compute CREATE2 address for given deployer factory, initCode and salt
     * @param factory The deployer contract (factory) address – use address(this) for local, destFactory for remote
     * @param initCode The initialization code (creation code + constructor args)
     * @param salt The salt for CREATE2
     */
    function _computeCreate2Address(address factory, bytes memory initCode, bytes32 salt) internal pure returns (address) {
        bytes32 hash = keccak256(
            abi.encodePacked(
                hex'ff',
                factory,
                salt,
                keccak256(initCode)
            )
        );
        return address(uint160(uint256(hash)));
    }

    /**
     * @notice Internal function to deploy a contract using CREATE2
     * @param initCode The initialization code (creation code + constructor args)
     * @param salt The salt for CREATE2 deployment
     * @return deployed The address of the deployed contract
     */
    function _deployCreate2(bytes memory initCode, bytes32 salt) internal returns (address deployed) {
        require(initCode.length != 0, "NO_INIT_CODE");
        assembly {
            deployed := create2(0, add(initCode, 0x20), mload(initCode), salt)
        }
        require(deployed != address(0), "DEPLOY_FAIL");
    }

    /**
     * @notice Deploy a new OFTAdapter contract using CREATE2
     * @dev This function deploys either MyOFTAdapter or MyNativeOFTAdapter based on the isNative parameter
     * @param tokenId PreMarket token ID (bytes32) - used as salt for CREATE2
     * @param isNative If true, deploys MyNativeOFTAdapter; if false, deploys MyOFTAdapter
     * @param token Address of the token contract (required when isNative is false)
     * @param localDecimals Number of decimals for native token (required when isNative is true)
     * @return adapterAddress Address of the newly deployed OFTAdapter contract
     * @dev Requires:
     *      - Caller must have OPERATOR_ROLE
     *      - lzEndpoint must be set
     *      - Creation code must be set for the appropriate adapter type
     *      - If isNative is false, token must not be zero address
     *      - If isNative is true, localDecimals must be greater than 0
     * @dev The deployed adapter will have PremarketOFTFactory as its delegate
     * @dev Chain ID is automatically obtained from block.chainid
     * @dev Emits OFTAdapterCreated or NativeOFTAdapterCreated with initCodeHash
     */
    function deployOFTAdapter(
        bytes32 tokenId,
        bool isNative,
        address token,
        uint8 localDecimals
    ) external onlyRole(OPERATOR_ROLE) returns (address adapterAddress) {
        adapterAddress = _deployOFTAdapter(tokenId, isNative, token, localDecimals);
    }

    /// @dev Core OFTAdapter deployment logic shared by deployOFTAdapter and deployOFTAdapterAndSetPeer.
    function _deployOFTAdapter(
        bytes32 tokenId,
        bool isNative,
        address token,
        uint8 localDecimals
    ) internal returns (address adapterAddress) {
        require(lzEndpoint != address(0), "LzEndpoint not set");

        if (isNative) {
            require(nativeOftAdapterCreationCode.length != 0, "NATIVE_OFT_ADAPTER_CODE_NOT_SET");
            require(localDecimals > 0, "Invalid localDecimals");

            bytes memory initCode = abi.encodePacked(
                nativeOftAdapterCreationCode,
                abi.encode(localDecimals, lzEndpoint, address(this))
            );

            adapterAddress = _deployCreate2(initCode, tokenId);

            emit NativeOFTAdapterCreated(
                tokenId,
                adapterAddress,
                localDecimals,
                block.chainid,
                keccak256(initCode)
            );
        } else {
            require(oftAdapterCreationCode.length != 0, "OFT_ADAPTER_CODE_NOT_SET");
            require(token != address(0), "Invalid token address");

            bytes memory initCode = abi.encodePacked(
                oftAdapterCreationCode,
                abi.encode(token, lzEndpoint, address(this))
            );

            adapterAddress = _deployCreate2(initCode, tokenId);

            emit OFTAdapterCreated(
                tokenId,
                token,
                adapterAddress,
                block.chainid,
                keccak256(initCode)
            );
        }
    }

    /**
     * @notice Deploy a new OFT via CREATE2 and immediately set its peer to the predicted OFTAdapter address
     * @param tokenId PreMarket token ID (bytes32) – used as CREATE2 salt for both OFT and peer prediction
     * @param wrappedTokenName Name for the wrapped OFT token
     * @param wrappedTokenSymbol Symbol for the wrapped OFT token
     * @param remoteEid LayerZero endpoint ID of the remote chain where the OFTAdapter lives
     * @param destFactory Factory contract address on the remote chain that will deploy the OFTAdapter
     * @param destLzEndpoint LayerZero endpoint address on the remote chain (used to predict the adapter's CREATE2 address)
     * @param isNativeAdapter True if the remote adapter is a NativeOFTAdapter; false for ERC20 OFTAdapter
     * @param adapterToken Token address used by the remote OFTAdapter (ignored when isNativeAdapter is true)
     * @param adapterLocalDecimals Local decimals used by the remote NativeOFTAdapter (ignored when isNativeAdapter is false)
     * @return deployed Address of the newly deployed OFT contract
     */
    function deployOFTAndSetPeer(
        bytes32 tokenId,
        string calldata wrappedTokenName,
        string calldata wrappedTokenSymbol,
        uint32 remoteEid,
        address destFactory,
        address destLzEndpoint,
        bool isNativeAdapter,
        address adapterToken,
        uint8 adapterLocalDecimals
    ) external onlyRole(OPERATOR_ROLE) returns (address deployed) {
        require(destFactory != address(0), "Invalid destFactory");
        require(destLzEndpoint != address(0), "Invalid destLzEndpoint");

        // Deploy OFT (validates creation code, endpoint, name/symbol)
        deployed = _deployOFT(tokenId, wrappedTokenName, wrappedTokenSymbol);

        // Predict OFTAdapter address on the remote chain using destFactory and destLzEndpoint
        bytes memory adapterInitCode;
        if (isNativeAdapter) {
            require(nativeOftAdapterCreationCode.length != 0, "NATIVE_OFT_ADAPTER_CODE_NOT_SET");
            require(adapterLocalDecimals > 0, "Invalid localDecimals");
            adapterInitCode = abi.encodePacked(
                nativeOftAdapterCreationCode,
                abi.encode(adapterLocalDecimals, destLzEndpoint, destFactory)
            );
        } else {
            require(oftAdapterCreationCode.length != 0, "OFT_ADAPTER_CODE_NOT_SET");
            require(adapterToken != address(0), "Invalid token address");
            adapterInitCode = abi.encodePacked(
                oftAdapterCreationCode,
                abi.encode(adapterToken, destLzEndpoint, destFactory)
            );
        }
        _setPeer(deployed, remoteEid, _computeCreate2Address(destFactory, adapterInitCode, tokenId));
    }

    /**
     * @notice Deploy a new OFTAdapter via CREATE2 and immediately set its peer to the predicted OFT address
     * @param tokenId PreMarket token ID (bytes32) – used as CREATE2 salt for both OFTAdapter and peer prediction
     * @param isNative True to deploy NativeOFTAdapter; false to deploy ERC20 OFTAdapter
     * @param token Token address to wrap (required when isNative is false)
     * @param localDecimals Native token decimals (required when isNative is true)
     * @param remoteEid LayerZero endpoint ID of the remote chain where the OFT lives
     * @param destFactory Factory contract address on the remote chain that deployed (or will deploy) the OFT
     * @param destLzEndpoint LayerZero endpoint address on the remote chain (used to predict the OFT's CREATE2 address)
     * @param wrappedTokenName Name used by the remote OFT (for peer address prediction)
     * @param wrappedTokenSymbol Symbol used by the remote OFT (for peer address prediction)
     * @return adapterAddress Address of the newly deployed OFTAdapter contract
     */
    function deployOFTAdapterAndSetPeer(
        bytes32 tokenId,
        bool isNative,
        address token,
        uint8 localDecimals,
        uint32 remoteEid,
        address destFactory,
        address destLzEndpoint,
        string calldata wrappedTokenName,
        string calldata wrappedTokenSymbol
    ) external onlyRole(OPERATOR_ROLE) returns (address adapterAddress) {
        require(destFactory != address(0), "Invalid destFactory");
        require(destLzEndpoint != address(0), "Invalid destLzEndpoint");

        // Deploy OFTAdapter (validates creation code, endpoint, token/decimals)
        adapterAddress = _deployOFTAdapter(tokenId, isNative, token, localDecimals);

        // Predict OFT address on the remote chain using destFactory and destLzEndpoint
        require(oftCreationCode.length != 0, "OFT_CODE_NOT_SET");
        require(bytes(wrappedTokenName).length > 0, "Empty name");
        require(bytes(wrappedTokenSymbol).length > 0, "Empty symbol");
        bytes memory oftInitCode = abi.encodePacked(
            oftCreationCode,
            abi.encode(wrappedTokenName, wrappedTokenSymbol, destLzEndpoint, destFactory)
        );
        _setPeer(adapterAddress, remoteEid, _computeCreate2Address(destFactory, oftInitCode, tokenId));
    }

    /// @dev Internal: call setPeer on an OApp owned by this factory and emit OAppPeerSet.
    function _setPeer(address oapp, uint32 eid, address peer) internal {
        bytes32 peerBytes32 = bytes32(uint256(uint160(peer)));
        IOAppCoreMethods(oapp).setPeer(eid, peerBytes32);
        emit OAppPeerSet(oapp, eid, peerBytes32);
    }

    /**
     * @notice Sets the delegate address for an OApp contract (OFT or OFTAdapter) on the LayerZero endpoint
     * @dev Works with both OFT and OFTAdapter contracts since they both inherit from OAppCore
     * @dev Provides the ability for a delegate to set configs, on behalf of the OApp, directly on the Endpoint contract
     * @param oappAddress Address of the OApp contract (OFT or OFTAdapter) to update
     * @param _delegate The address of the delegate to be set on the LayerZero endpoint
     * @dev Requires:
     *      - Caller must have ADMIN_ROLE
     *      - oappAddress must not be zero address
     *      - _delegate must not be zero address
     *      - PremarketOFTFactory must be the owner of the OApp contract
     * @dev The delegate is typically set as the owner of the contract and can configure LayerZero settings
     */
    function setOAppDelegate(
        address oappAddress,
        address _delegate
    ) external onlyRole(ADMIN_ROLE) {
        require(oappAddress != address(0), "Invalid OApp address");
        require(_delegate != address(0), "Invalid delegate");

        IOAppCoreMethods oapp = IOAppCoreMethods(oappAddress);
        oapp.setDelegate(_delegate);

        emit OAppDelegateSet(oappAddress, _delegate);
    }

    /**
     * @notice Sets the peer address (OApp instance) for a corresponding endpoint on an OApp contract (OFT or OFTAdapter)
     * @dev Works with both OFT and OFTAdapter contracts since they both inherit from OAppCore
     * @dev Indicates that the peer is trusted to send LayerZero messages to this OApp
     * @dev Set peer to bytes32(0) to remove the peer address
     * @param oappAddress Address of the OApp contract (OFT or OFTAdapter) to update
     * @param _eid The LayerZero endpoint ID of the target chain
     * @param _peer The address of the peer to be associated with the corresponding endpoint (bytes32 format for multi-chain support)
     * @dev Requires:
     *      - Caller must have OPERATOR_ROLE
     *      - oappAddress must not be zero address
     *      - PremarketOFTFactory must be the owner of the OApp contract
     * @dev Peer is a bytes32 to accommodate non-EVM chains
     * @dev This establishes the LayerZero peer connection between OApp contracts on different chains
     */
    function setOAppPeer(
        address oappAddress,
        uint32 _eid,
        bytes32 _peer
    ) external onlyRole(ADMIN_ROLE) {
        require(oappAddress != address(0), "Invalid OApp address");

        IOAppCoreMethods oapp = IOAppCoreMethods(oappAddress);
        oapp.setPeer(_eid, _peer);

        emit OAppPeerSet(oappAddress, _eid, _peer);
    }
}
