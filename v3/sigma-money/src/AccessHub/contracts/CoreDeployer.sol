// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";
import {TimelockedTransparentUpgradableProxy} from "./TimelockedTransparentUpgradableProxy.sol";
import {IAccessHub} from "./interfaces/IAccessHub.sol";

/**
 * @title CoreDeployer
 * @notice Atomically deploys and initializes AccessHub, Voter, VoteModule proxies
 *         via CREATE2. All deploy + initialize happens in one transaction,
 *         eliminating front-running windows between proxy deployment and initialization.
 * @dev One-time-use deployment helper. Only the deployer (msg.sender at construction)
 *      can call deploy(). CREATE2 guarantees deterministic addresses, enabling
 *      dependent contracts (GaugeEmission, Factories, XShadow) to be initialized
 *      with the AccessHub address before this contract is called.
 *
 *      AccessHub is deployed behind a TimelockedTransparentUpgradableProxy (Transparent Proxy),
 *      with upgrade authority managed by the auto-created ProxyAdmin.
 *      Voter and VoteModule remain UUPS (ERC1967Proxy).
 */
contract CoreDeployer {
    error ONLY_DEPLOYER();
    error VOTER_INIT_FAILED();
    error VOTE_MODULE_INIT_FAILED();
    error ACCESS_HUB_INIT_FAILED();

    event CoreProxiesDeployed(
        address accessHubProxy,
        address accessHubProxyAdmin,
        address voterProxy,
        address voteModuleProxy
    );

    bytes32 public constant SALT_ACCESS_HUB = keccak256("AccessHub");
    bytes32 public constant SALT_VOTER = keccak256("Voter");
    bytes32 public constant SALT_VOTE_MODULE = keccak256("VoteModule");

    address public immutable deployer;

    constructor() {
        deployer = msg.sender;
    }

    // ─── Address Prediction (view) ─────────────────────────────────

    /// @notice Predict the AccessHub proxy address before deployment
    /// @param impl AccessHub implementation address
    /// @param proxyAdminOwner The owner of the ProxyAdmin (typically the multisig/owner)
    function computeAccessHubAddress(
        address impl,
        address proxyAdminOwner
    ) external view returns (address) {
        bytes32 hash = keccak256(
            abi.encodePacked(
                bytes1(0xff),
                address(this),
                SALT_ACCESS_HUB,
                keccak256(
                    abi.encodePacked(
                        type(TimelockedTransparentUpgradableProxy).creationCode,
                        abi.encode(impl, proxyAdminOwner, new bytes(0))
                    )
                )
            )
        );
        return address(uint160(uint256(hash)));
    }

    /// @notice Predict the Voter proxy address before deployment
    function computeVoterAddress(address impl) external view returns (address) {
        return _computeERC1967ProxyAddress(SALT_VOTER, impl);
    }

    /// @notice Predict the VoteModule proxy address before deployment
    function computeVoteModuleAddress(address impl) external view returns (address) {
        return _computeERC1967ProxyAddress(SALT_VOTE_MODULE, impl);
    }

    // ─── Atomic Deploy + Initialize ────────────────────────────────

    /// @notice Atomically deploy and initialize AccessHub, Voter, VoteModule
    /// @dev Only callable by the original deployer. All three proxies are
    ///      deployed and initialized in a single transaction.
    ///      AccessHub uses Transparent Proxy; Voter & VoteModule use ERC1967 (UUPS).
    function deploy(
        address accessHubImpl,
        address voterImpl,
        address voteModuleImpl,
        address owner,
        address operator,
        address shadow,
        address gaugeEmission,
        address xShadow,
        address sigmaGaugeFactory,
        address veFunderGaugeFactory,
        address sigmaFeeDistributorFactory,
        address msig,
        uint256 maxTotalSigmaGaugePreallocation,
        uint256 maxVeFunderGaugeCap
    ) external {
        require(msg.sender == deployer, ONLY_DEPLOYER());

        // ─── Step 1: Deploy 3 proxies (uninitialized) via CREATE2 ───

        // AccessHub: Transparent Proxy — ProxyAdmin owner = owner (multisig)
        address accessHub = address(
            new TimelockedTransparentUpgradableProxy{salt: SALT_ACCESS_HUB}(
                accessHubImpl,
                owner,
                ""
            )
        );

        // Voter & VoteModule: UUPS (ERC1967Proxy)
        address voter = address(
            new ERC1967Proxy{salt: SALT_VOTER}(voterImpl, "")
        );
        address voteModule = address(
            new ERC1967Proxy{salt: SALT_VOTE_MODULE}(voteModuleImpl, "")
        );

        // ─── Step 2: Initialize Voter.initializeV2 (reinitializer(2)) ───
        (bool s1, ) = voter.call(
            abi.encodeWithSignature(
                "initializeV2(address,address,address,address,address,address,address,address,address,uint256,uint256)",
                accessHub,
                shadow,
                veFunderGaugeFactory,
                sigmaGaugeFactory,
                sigmaFeeDistributorFactory,
                gaugeEmission,
                msig,
                xShadow,
                voteModule,
                maxTotalSigmaGaugePreallocation,
                maxVeFunderGaugeCap
            )
        );
        require(s1, VOTER_INIT_FAILED());

        // ─── Step 3: Initialize VoteModule ───
        (bool s2, ) = voteModule.call(
            abi.encodeWithSignature(
                "initialize(address,address,address)",
                xShadow,
                voter,
                accessHub
            )
        );
        require(s2, VOTE_MODULE_INIT_FAILED());

        // ─── Step 4: Initialize AccessHub ───
        // CoreDeployer is NOT the ProxyAdmin, so this call is forwarded to impl
        (bool s3, ) = accessHub.call(
            abi.encodeCall(
                IAccessHub.initialize,
                (
                    IAccessHub.InitParams({
                        owner: owner,
                        operator: operator,
                        voter: voter,
                        gaugeEmission: gaugeEmission,
                        xShadow: xShadow,
                        voteModule: voteModule,
                        sigmaGaugeFactory: sigmaGaugeFactory,
                        veFunderGaugeFactory: veFunderGaugeFactory,
                        sigmaFeeDistributorFactory: sigmaFeeDistributorFactory
                    })
                )
            )
        );
        require(s3, ACCESS_HUB_INIT_FAILED());

        // ProxyAdmin is the first contract created by the proxy (nonce=1)
        address proxyAdmin = address(uint160(uint256(keccak256(
            abi.encodePacked(bytes1(0xd6), bytes1(0x94), accessHub, bytes1(0x01))
        ))));

        emit CoreProxiesDeployed(accessHub, proxyAdmin, voter, voteModule);
    }

    // ─── Internal ──────────────────────────────────────────────────

    function _computeERC1967ProxyAddress(
        bytes32 salt,
        address impl
    ) internal view returns (address) {
        bytes32 hash = keccak256(
            abi.encodePacked(
                bytes1(0xff),
                address(this),
                salt,
                keccak256(
                    abi.encodePacked(
                        type(ERC1967Proxy).creationCode,
                        abi.encode(impl, new bytes(0))
                    )
                )
            )
        );
        return address(uint160(uint256(hash)));
    }
}
