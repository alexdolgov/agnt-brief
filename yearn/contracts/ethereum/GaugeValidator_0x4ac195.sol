// ============================================================
// FILE: src/GaugeValidator.sol
// ============================================================

// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

interface IGauge {
    function lp_token() external view returns (address);
    function factory() external view returns (address);
}

interface IRootGauge {
    function bridger() external view returns (address);
    function factory() external view returns (address);
}

interface IGaugeFactory {
    function get_gauge(address) external view returns (address);
    function gauge_for_vault(address) external view returns (address);
    function is_valid_gauge(address) external view returns (bool);
}

interface IDAO {
    function votesLength() external view returns (uint256);
    function getVote(uint256 voteId) external view returns (
        bool open,
        bool executed,
        uint64 startDate,
        uint64 snapshotBlock,
        uint64 supportRequired,
        uint64 minAcceptQuorum,
        uint256 yea,
        uint256 nay,
        uint256 votingPower,
        bytes memory script
    );
}

contract GaugeValidator {
    bytes4 constant ADD_GAUGE_SELECTOR = 0x18dfe921;
    IDAO public constant dao = IDAO(0xE478de485ad2fe566d49342Cbd03E49ed7DB3356);

    // Trusted gauge factory addresses
    address public constant REGULAR_FACTORY = 0x6A8cbed756804B16E05E741eDaBd5cB544AE21bf;
    address public constant BRIDGE_FACTORY = 0xabC000d88f23Bb45525E447528DBF656A9D55bf5;
    address public constant FRAXTAL_FACTORY = 0xeF672bD94913CB6f1d2812a6e18c1fFdEd8eFf5c;
    address public constant TWOCRYPTO_FACTORY = 0x98EE851a00abeE0d95D08cF4CA2BdCE32aeaAF7F;
    address public constant LENDING_FACTORY = 0xeA6876DDE9e3467564acBeE1Ed5bac88783205E0;
    address public constant TWO_CRYPTO_FACTORY = 0xF18056Bbd320E96A48e3Fbf8bC061322531aac99;
    address public constant METAPOOL_FACTORY = 0xB9fC157394Af804a3578134A6585C0dc9cc990d4;
    address public constant ROOT_GAUGE_FACTORY = 0x306A45a1478A000dC701A6e1f7a569afb8D9DCD6;
    address public constant STABLESWAP_PROXY = 0x855cC906dA8271Dd53879929bd226711247D5f17;
    address public constant TRICRYPTO_FACTORY = 0x0c0e5f2fF0ff18a3be9b835635039256dC4B4963;

    enum GaugeType {
        UNKNOWN,
        LP,
        ROOT
    }

    struct ProposalInfo {
        uint256 id;
        address[] gauges;
        bool executed;
        uint256 startDate;
    }
    
    /**
     * @notice Check if an address is a trusted gauge factory
     * @param factory The factory address to check
     * @return bool True if the factory is trusted
     */
    function isTrustedFactory(address factory) public pure returns (bool) {
        return factory == REGULAR_FACTORY ||
               factory == BRIDGE_FACTORY ||
               factory == FRAXTAL_FACTORY ||
               factory == TWOCRYPTO_FACTORY ||
               factory == LENDING_FACTORY ||
               factory == TWO_CRYPTO_FACTORY ||
               factory == METAPOOL_FACTORY ||
               factory == ROOT_GAUGE_FACTORY ||
               factory == STABLESWAP_PROXY ||
               factory == TRICRYPTO_FACTORY;
    }

    /**
     * @notice Check if an address is an LP gauge
     * @param gauge The gauge address to check
     * @return bool True if the address is an LP gauge
     */
    function isLPGauge(address gauge) public view returns (bool) {
        try IGauge(gauge).lp_token() returns (address) {
            return true;
        } catch {
            return false;
        }
    }

    /**
     * @notice Check if an address is a root gauge
     * @param gauge The gauge address to check
     * @return bool True if the address is a root gauge
     */
    function isRootGauge(address gauge) public view returns (bool) {
        try IRootGauge(gauge).bridger() returns (address) {
            return true;
        } catch {
            return false;
        }
    }

    /**
     * @notice Validate a root gauge
     * @param gauge The gauge address to validate
     * @return bool True if the gauge is valid
     */
    function validateRootGauge(address gauge) public view returns (bool) {
        try IRootGauge(gauge).factory() returns (address factory) {
            if (!isTrustedFactory(factory)) {
                return false;
            }
            return IGaugeFactory(factory).is_valid_gauge(gauge);
        } catch {
            return false;
        }
    }

    /**
     * @notice Validate an LP gauge
     * @param gauge The gauge address to validate
     * @return _isValid True if the gauge is valid
     */
    function validateLPGauge(address gauge) public view returns (bool _isValid) {
        try IGauge(gauge).factory() returns (address factory) {
            if (!isTrustedFactory(factory)) {
                return false;
            }
            
            address lp;
            try IGauge(gauge).lp_token() returns (address _lp) {
                lp = _lp;
            } catch {
                lp = gauge;
            }

            // Special case for lending factory
            if (factory == LENDING_FACTORY) {
                return IGaugeFactory(factory).gauge_for_vault(lp) == gauge;
            } else {
                return IGaugeFactory(factory).get_gauge(lp) == gauge;
            }
        } catch {
            return false;
        }
    }

    /**
     * @notice Validate any gauge address
     * @param gauge The gauge address to validate
     * @return isValid True if the gauge is valid
     * @return gaugeType 1 for LP gauge, 2 for root gauge, 0 for other
     */
    function validateGauge(address gauge) public view returns (bool isValid, GaugeType gaugeType) {
        try this.isLPGauge(gauge) returns (bool _isLPGauge) {
            if (_isLPGauge) {
                return (validateLPGauge(gauge), GaugeType.LP);
            }
        } catch {}

        try this.isRootGauge(gauge) returns (bool _isRootGauge) {
            if (_isRootGauge) {
                return (validateRootGauge(gauge), GaugeType.ROOT);
            }
        } catch {}

        return (false, GaugeType.UNKNOWN);
    }

    /**
     * @notice Get gauge addresses from recent proposals
     * @param maxProposals Maximum number of proposals to check
     * @return proposals Array of proposal information
     */
    function getActiveProposalGauges(uint256 maxProposals) external view returns (ProposalInfo[] memory) {
        uint256 votesLength = dao.votesLength();
        uint256 startIndex = votesLength > 0 ? votesLength - 1 : 0;
        
        // First pass to count valid proposals
        uint256 count = 0;
        bool open;
        bool executed;
        uint64 startDate;
        bytes memory script;
        for (uint256 i = startIndex; i >= 0 && count < maxProposals; i--) {
            (
                open,
                executed,
                startDate,,,,,,,
                script
            ) = dao.getVote(i);
            if (!open) {
                break;
            }
            if (script.length > 0) {
                count++;
            }
            if (i == 0) break; // Prevent underflow
        }
        
        // Allocate array for results
        ProposalInfo[] memory proposals = new ProposalInfo[](count);
        
        // Second pass to collect data
        uint256 foundCount = 0;
        for (uint256 i = startIndex; i >= 0 && foundCount < count; i--) {
            (
                open,
                executed,
                startDate,,,,,,,
                script
            ) = dao.getVote(i);
            if (!open) {
                break;
            }
            if (script.length > 0) {
                address[] memory gauges = parseGaugeAddressesFromBytes(script);
                if (gauges.length > 0) {
                    proposals[foundCount] = ProposalInfo({
                        id: i,
                        gauges: gauges,
                        executed: executed,
                        startDate: startDate
                    });
                    foundCount++;
                }
            }
            if (i == 0) break; // Prevent underflow
        }
        
        return proposals;
    }

    /**
     * @notice Get gauge addresses from a specific proposal
     * @param proposalId The ID of the proposal to check
     * @return info Proposal information including gauges
     */
    function getProposalGauges(uint256 proposalId) public view returns (ProposalInfo memory info) {
        (
            bool open,
            bool executed,
            uint64 startDate,,,,,,,
            bytes memory script
        ) = dao.getVote(proposalId);
        
        address[] memory gauges = parseGaugeAddressesFromBytes(script);
        return ProposalInfo({
            id: proposalId,
            gauges: gauges,
            executed: executed,
            startDate: startDate
        });
    }

    function validateProposalGauges(uint256 proposalId) public view returns (bool) {
        ProposalInfo memory proposal = getProposalGauges(proposalId);
        for (uint256 i = 0; i < proposal.gauges.length; i++) {
            (bool isValid, ) = validateGauge(proposal.gauges[i]);
            if (!isValid) {
                return false;
            }
        }
        return true;
    }

    function parseGaugeAddresses(bytes calldata data) public pure returns (address[] memory) {
        return parseGaugeAddressesFromBytes(data);
    }

    function parseGaugeAddressesFromBytes(bytes memory data) public pure returns (address[] memory) {
        // First pass: count how many gauge addresses we'll find
        uint256 count = 0;
        uint256 i = 0;
        
        while (i < data.length - 3) {  // -3 to ensure we can read a full selector
            // Look for selector
            bytes4 selector;
            assembly {
                selector := mload(add(add(data, 0x20), i))
            }
            if (selector == ADD_GAUGE_SELECTOR) {
                count++;
                i += 4;  // Skip selector
            } else {
                i++;
            }
        }

        // Allocate array for results
        address[] memory gauges = new address[](count);
        
        // Second pass: extract addresses
        uint256 foundCount = 0;
        i = 0;
        
        while (i < data.length - 3 && foundCount < count) {
            bytes4 selector;
            assembly {
                selector := mload(add(add(data, 0x20), i))
            }
            if (selector == ADD_GAUGE_SELECTOR) {
                // Skip selector (4 bytes) and 12 bytes of padding to get to the address
                uint256 addressStart = i + 4 + 12;
                
                // Extract 20 bytes for address
                address gauge;
                assembly {
                    let word := mload(add(add(data, 0x20), addressStart))
                    gauge := shr(96, word)  // Shift right by 96 bits to get the address
                }
                
                gauges[foundCount] = gauge;
                foundCount++;
                i += 4;  // Skip selector
            } else {
                i++;
            }
        }

        return gauges;
    }

    function parseGaugeAddressesFromHex(string calldata hexString) external pure returns (address[] memory) {
        bytes memory data = hexToBytes(hexString);
        return parseGaugeAddressesFromBytes(data);
    }

    function hexToBytes(string calldata hexString) public pure returns (bytes memory) {
        bytes memory str = bytes(hexString);
        uint256 start = 0;
        
        // Skip 0x prefix if present
        if (str.length >= 2 && str[0] == bytes1("0") && (str[1] == bytes1("x") || str[1] == bytes1("X"))) {
            start = 2;
        }

        require((str.length - start) % 2 == 0, "Odd length hex string");
        
        bytes memory result = new bytes((str.length - start) / 2);
        uint256 resultIndex = 0;
        
        for (uint256 i = start; i < str.length; i += 2) {
            result[resultIndex] = bytes1(
                (hexCharToByte(str[i]) << 4) | hexCharToByte(str[i + 1])
            );
            resultIndex++;
        }
        
        return result;
    }

    function hexCharToByte(bytes1 c) internal pure returns (uint8 b) {
        if (uint8(c) >= 48 && uint8(c) <= 57) { // 0-9
            return uint8(c) - 48;
        }
        if (uint8(c) >= 97 && uint8(c) <= 102) { // a-f
            return 10 + uint8(c) - 97;
        }
        if (uint8(c) >= 65 && uint8(c) <= 70) { // A-F
            return 10 + uint8(c) - 65;
        }
        revert("Invalid hex character");
    }
}
