// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity =0.8.22;

import "forge-std/Script.sol";
import "forge-std/StdJson.sol";
import "../contracts/MerkleDistributor.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {console} from "forge-std/console.sol";

contract StagingToken is ERC20 {
    constructor(address owner, string memory name, string memory symbol) ERC20(name, symbol) {
        console.log("Minting 1e6 tokens to %s", owner);
        _mint(owner, 1e6 * 10 ** decimals());
    }
}

contract DeployMerkleDistributor is Script {
    using stdJson for string;
    
    // Token address mappings - these should be set per chain
    mapping(string => mapping(uint32 => address)) public tokenAddresses;
    function _chainIdToAlias(uint32 chainId) internal pure returns (string memory) {
        if (chainId == 1) {
            return "eth";
        } else if (chainId == 10) {
            return "optimism";
        } else if (chainId == 56) {
            return "bsc";
        } else if (chainId == 8453) {
            return "base";
        } else {
            return "unknown";
        }
    }
    
    
    constructor() {

        // Initialize token addresses for supported chains
        // Chain ID 1 (Ethereum mainnet) - placeholder addresses, update with actual addresses
        tokenAddresses["HYPER"][10] = 0x6F7a73c60c34aC61a4A8D8cf80D79B36e0b65C6e; // Example HYPER token
        tokenAddresses["stHYPER"][1] = 0xb8EB8E26515d6d0ee64fE0dbb28Ae38B40F7B9F7; // Example stHYPER token
        
        // Chain ID 56 (BSC) - placeholder addresses, update with actual addresses  
        tokenAddresses["stHYPER"][56] = 0xC5E6bb2Bd640C7C38a9C70E897b9E9e9a7A8e8FA; // Example stHYPER token on BSC
    }

    function _deployer() internal returns (address) {
        return  vm.rememberKey(vm.envUint("PRIVATE_KEY"));
    }

    function _deployStagingHyper(uint32 chainId) internal {
        vm.createSelectFork(_chainIdToAlias(chainId));
        vm.startBroadcast(_deployer());
        StagingToken stagingHyper = new StagingToken(_deployer(), "Staging Hyper", "HYPER");
        StagingToken stagingStHyper = new StagingToken(_deployer(), "Staging stHYPER", "stHYPER");
        tokenAddresses["HYPER"][chainId] = address(stagingHyper);
        tokenAddresses["stHYPER"][chainId] = address(stagingStHyper);
        vm.stopBroadcast();
    }
    
    function deploy(uint32 chainId) external {
        _deployStagingHyper(chainId);
    
        
        // Get all available token types for this chain
        string[] memory tokenTypes = getTokenTypesForChain(chainId);
        
        for (uint256 i = 0; i < tokenTypes.length; i++) {
            string memory tokenType = tokenTypes[i];
            address tokenAddress = tokenAddresses[tokenType][chainId];
            console.log("Token address: %s", tokenAddress);
            
            if (tokenAddress == address(0)) {
                console.log("Warning: No token address configured for %s on chain %s", tokenType, chainId);
                continue;
            }
            
            // Construct the filename
            string memory filename = string.concat(
                vm.projectRoot(),
                "/roots/",
                vm.toString(chainId),
                "-",
                tokenType,
                ".json"
            );
            
            // Check if file exists and read it
            try vm.readFile(filename) returns (string memory fileContent) {
                // Parse the JSON to extract merkle root
                bytes32 merkleRoot = bytes32(fileContent.readBytes32(".merkleRoot"));
                
                vm.startBroadcast(_deployer());
                
                // Deploy the MerkleDistributor
                MerkleDistributor distributor = new MerkleDistributor(tokenAddress, merkleRoot);
                ERC20(tokenAddress).transfer(address(distributor), 1e6 * 10 ** 18);
                vm.stopBroadcast();

                if (keccak256(bytes(tokenType)) == keccak256("HYPER")) {
                    vm.prank(0x03c4e363c023fAFA9027A5DdD212C113f0bD09d4);
                    bytes32[] memory proof = new bytes32[](4);
                    proof[0] = 0x1ff2317e5e55f91685a0f81c709b43ef6b7a24e817d76c95abc01da022e6c56f; 
                    proof[1] = 0x1410e161118d2ad8c4c66467538b1ac811bd73a1e06608f58abf7ad0e16304d6;
                    proof[2] = 0x636582a0891e392d252cab1edf21a71b2762814e366811883ef95d2f3bb5178f;
                    proof[3] = 0x6ddabef7a627491362cf55d03830f0e1410e9c0d95a0d7aa8658af188df01ce4;
                    distributor.claim(0, 0x03c4e363c023fAFA9027A5DdD212C113f0bD09d4, 0x1da72661deaaac0000, proof);
                }
                
                console.log("Deployed MerkleDistributor for %s on chain %s:", tokenType, chainId);
                console.log("  Contract address: %s", address(distributor));
                console.log("  Token address: %s", tokenAddress);
                console.log("  Merkle root: %s", vm.toString(merkleRoot));
                
            } catch {
                console.log("File not found or invalid: %s", filename);
            }
        }

        
        
    }
    
    function getTokenTypesForChain(uint32 chainId) internal pure returns (string[] memory) {
        if (chainId == 1) {
            // Ethereum mainnet has both HYPER and stHYPER
            string[] memory types = new string[](2);
            types[0] = "HYPER";
            types[1] = "stHYPER";
            return types;
        } else if (chainId == 56) {
            // BSC only has stHYPER
            string[] memory types = new string[](1);
            types[0] = "stHYPER";
            return types;
        } else {
            // Default: try both token types
            string[] memory types = new string[](2);
            types[0] = "HYPER";
            types[1] = "stHYPER";
            return types;
        }
    }
} 
