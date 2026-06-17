// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.28;

import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

/**
 * @notice An alternative oracle of sUSDS (issued by Sky). If Chainlink supports sUSDS, we can deprecate this contract.
 *
 *         this contract accepts messages from SusdsOracleL1, and update the oracle price of sUSDS (issued by Sky).
 */
contract SusdsOracleL2 is Initializable, OwnableUpgradeable {
    uint256 constant RAY = 10 ** 27;
    uint160 constant ARBITRUM_ADDRESS_OFFSET = uint160(0x1111000000000000000000000000000000001111);

    address public susdsOracleL1;
    uint192 public chi; // The Rate Accumulator  [ray]
    uint64 public rho; // Time of last drip      [unix epoch time]
    uint256 public ssr; // The USDS Savings Rate [ray]

    event OracleUpdated(uint192 chi, uint64 rho, uint256 ssr);

    function initialize(address susdsOracleL1_) external initializer {
        __Ownable_init();
        susdsOracleL1 = susdsOracleL1_;
    }

    function updateFromL1(uint192 chi_, uint64 rho_, uint256 ssr_) external payable {
        require(undoL1ToL2Alias(msg.sender) == susdsOracleL1, "Unauthorized");
        chi = chi_;
        rho = rho_;
        ssr = ssr_;
        emit OracleUpdated(chi_, rho_, ssr_);
    }

    function getPrice() public view returns (uint256 wad) {
        wad = currentChi() / 1e9;
    }

    // consistent with  https://etherscan.io/address/0xa3931d71877c0e7a3148cb7eb4463524fec27fbd
    function currentChi() public view returns (uint256) {
        return (block.timestamp > rho) ? (_rpow(ssr, block.timestamp - rho) * chi) / RAY : chi;
    }

    // consistent with  https://etherscan.io/address/0xa3931d71877c0e7a3148cb7eb4463524fec27fbd
    function _rpow(uint256 x, uint256 n) internal pure returns (uint256 z) {
        assembly {
            switch x
            case 0 {
                switch n
                case 0 {
                    z := RAY
                }
                default {
                    z := 0
                }
            }
            default {
                switch mod(n, 2)
                case 0 {
                    z := RAY
                }
                default {
                    z := x
                }
                let half := div(RAY, 2) // for rounding.
                for {
                    n := div(n, 2)
                } n {
                    n := div(n, 2)
                } {
                    let xx := mul(x, x)
                    if iszero(eq(div(xx, x), x)) {
                        revert(0, 0)
                    }
                    let xxRound := add(xx, half)
                    if lt(xxRound, xx) {
                        revert(0, 0)
                    }
                    x := div(xxRound, RAY)
                    if mod(n, 2) {
                        let zx := mul(z, x)
                        if and(iszero(iszero(x)), iszero(eq(div(zx, x), z))) {
                            revert(0, 0)
                        }
                        let zxRound := add(zx, half)
                        if lt(zxRound, zx) {
                            revert(0, 0)
                        }
                        z := div(zxRound, RAY)
                    }
                }
            }
        }
    }

    // https://github.com/OffchainLabs/nitro-contracts/blob/main/src/libraries/AddressAliasHelper.sol#L24
    function undoL1ToL2Alias(address l2Address) internal pure returns (address l1Address) {
        unchecked {
            l1Address = address(uint160(l2Address) - ARBITRUM_ADDRESS_OFFSET);
        }
    }
}
