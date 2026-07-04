// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/utils/Strings.sol";
import {ERC721} from "solmate/tokens/ERC721.sol";

import {LSSVMPair} from "../LSSVMPair.sol";
import {ILSSVMPairFactoryLike} from "../ILSSVMPairFactoryLike.sol";
import {IOwnershipTransferReceiver} from "../lib/IOwnershipTransferReceiver.sol";
import {OwnableWithTransferCallback} from "../lib/OwnableWithTransferCallback.sol";

/// @title Base64
/// @notice Provides a function for encoding some bytes in base64
/// @author Brecht Devos <brecht@loopring.org>
library Base64 {
    bytes internal constant TABLE =
        "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

    /// @notice Encodes some bytes to the base64 representation
    function encode(bytes memory data) internal pure returns (string memory) {
        uint256 len = data.length;
        if (len == 0) return "";

        // multiply by 4/3 rounded up
        uint256 encodedLen = 4 * ((len + 2) / 3);

        // Add some extra buffer at the end
        bytes memory result = new bytes(encodedLen + 32);

        bytes memory table = TABLE;

        assembly {
            let tablePtr := add(table, 1)
            let resultPtr := add(result, 32)

            for {
                let i := 0
            } lt(i, len) {

            } {
                i := add(i, 3)
                let input := and(mload(add(data, i)), 0xffffff)

                let out := mload(add(tablePtr, and(shr(18, input), 0x3F)))
                out := shl(8, out)
                out := add(
                    out,
                    and(mload(add(tablePtr, and(shr(12, input), 0x3F))), 0xFF)
                )
                out := shl(8, out)
                out := add(
                    out,
                    and(mload(add(tablePtr, and(shr(6, input), 0x3F))), 0xFF)
                )
                out := shl(8, out)
                out := add(
                    out,
                    and(mload(add(tablePtr, and(input, 0x3F))), 0xFF)
                )
                out := shl(224, out)

                mstore(resultPtr, out)

                resultPtr := add(resultPtr, 4)
            }

            switch mod(len, 3)
            case 1 {
                mstore(sub(resultPtr, 2), shl(240, 0x3d3d))
            }
            case 2 {
                mstore(sub(resultPtr, 1), shl(248, 0x3d))
            }

            mstore(result, encodedLen)
        }

        return string(result);
    }
}

interface Ownable {
    function transferOwnership(address newOwner) external;
}

interface IZorb {
    function gradientForAddress(
        address user
    ) external pure returns (bytes[5] memory);
}

contract WrappedSudoPool is
    IOwnershipTransferReceiver,
    ERC721,
    OwnableWithTransferCallback
{
    using Strings for uint256;
    ILSSVMPairFactoryLike immutable factory;
    mapping(address => string) public specialStuff;

    constructor(
        ILSSVMPairFactoryLike _factory
    ) ERC721("Wrapped Sudo Pool", "WSP") {
        factory = _factory;
        __Ownable_init(msg.sender);
    }

    function onOwnershipTransferred(
        address oldOwner,
        bytes memory
    ) external payable {
        // Only for valid ERC721 ETH pairs
        require(factory.isValidPair(msg.sender), "Invalid pair");
        require(
            LSSVMPair(msg.sender).pairVariant() ==
                ILSSVMPairFactoryLike.PairVariant.ERC721_ETH,
            "Invalid pair type"
        );
        // Set asset recipient to the pool itself
        LSSVMPair(msg.sender).changeAssetRecipient(payable(msg.sender));
        _mint(oldOwner, uint256(uint160(msg.sender)));
    }

    function reclaimPairs(address[] calldata pairs) external {
        uint256 numPairs = pairs.length;
        for (uint i; i < numPairs; ) {
            address pairAddress = pairs[i];
            require(
                ownerOf(uint256(uint160(pairAddress))) == msg.sender,
                "Not owner"
            );
            _burn(uint256(uint160(pairAddress)));
            unchecked {
                ++i;
            }
            LSSVMPair(pairAddress).transferOwnership(msg.sender, "");
        }
    }

    function rescuePair(address pairAddress) external onlyOwner {
        require(ownerOf(uint256(uint160(pairAddress))) == address(0), "Not burned");
        LSSVMPair(pairAddress).transferOwnership(msg.sender, "");
    }

    function tokenURI(uint256 id) public view override returns (string memory) {
        string memory collectionName = "";
        try ERC721(LSSVMPair(address(uint160(id))).nft()).name() returns (
            string memory name
        ) {
            collectionName = name;
        } catch {}
        return
            string(
                abi.encodePacked(
                    "data:application/json;base64,",
                    Base64.encode(
                        bytes(
                            abi.encodePacked(
                                '{"name":"',
                                collectionName,
                                '<-> ETH LP", "description":"',
                                "A wrapped Sudoswap pool for ",
                                collectionName,
                                '", "image": "',
                                "data:image/svg+xml;base64,",
                                Base64.encode(getSVG(id)),
                                '"}'
                            )
                        )
                    )
                )
            );
    }

    function getSVG(uint256 id) public view returns (bytes memory) {
        return
            abi.encodePacked(
                getOpener(),
                getGradient(),
                getBox(),
                getHeader(id),
                getPrice(id),
                getBalance(id),
                getSpecial(id),
                "</svg>"
            );
    }

    function getHeader(uint256 id) private pure returns (string memory) {
        string memory poolType = "TRADE";
        string memory color = "b9b9fa";

        {
            LSSVMPair pair = LSSVMPair(address(uint160(id)));
            if (pair.poolType() == LSSVMPair.PoolType.TOKEN) {
                poolType = "TOKEN";
                color = "9dc1ef";
            } else if (pair.poolType() == LSSVMPair.PoolType.NFT) {
                poolType = "NFT";
                color = "dc92e4";
            }
        }

        return
            string(
                abi.encodePacked(
                    '<g transform="translate(6,52) scale(0.1)"><path d="M100 50C100 22.3858 77.6142 0 50 0C22.3858 0 0 22.3858 0 50C0 77.6142 22.3858 100 50 100C77.6142 100 100 77.6142 100 50Z" fill="url(#g)" /><path stroke="rgba(0,0,0,0.075)" fill="transparent" stroke-width="1" d="M50,0.5c27.3,0,49.5,22.2,49.5,49.5S77.3,99.5,50,99.5S0.5,77.3,0.5,50S22.7,0.5,50,0.5z" /></g><text x="18" y="59" fill="#9292a3" class="s">',
                    toAsciiString(address(uint160(id))),
                    '</text><rect width="24" height="13" x="93" y="50.1" ry="4.3" style="fill:#',
                    color,
                    ';fill-opacity:1;stroke:none;stroke-width:.295635"/><text x="95" y="59" fill="#000" class="s">',
                    poolType,
                    "</text>"
                )
            );
    }

    function getOpener() private pure returns (string memory) {
        return
            '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 132 132"><style>.s, .b {font-size: 5px;font-weight: bold; font-family: sans-serif;}.b {font-size: 8px;}</style><defs><radialGradient id="g" gradientTransform="translate(66.4578 24.3575) scale(75.2908)" gradientUnits="userSpaceOnUse" r="1" cx="0" cy="0%">';
    }

    function getGradient() private pure returns (string memory) {
        return
            string(
                abi.encodePacked(
                    '<stop offset="15.62%" stop-color="red',
                    '" /><stop offset="39.58%" stop-color="gold',
                    '" /><stop offset="72.92%" stop-color="coral',
                    '" /><stop offset="90.63%" stop-color="firebrick',
                    '" /><stop offset="100%" stop-color="crimson',
                    '" /></radialGradient></defs>'
                )
            );
    }

    function getBox() private pure returns (string memory) {
        return
            '<rect width="127" height="74.1" x="3" y="46.1" ry="7.4" style="fill:#14141b;fill-opacity:1;stroke:#36364a;stroke-width:.265;stroke-opacity:1"/><rect width="127" height="30.4" x="3" y="67.4" ry="0" style="fill:#1b1b24;fill-opacity:1;stroke:#36364a;stroke-width:.265;stroke-opacity:1"/>';
    }

    function getPrice(uint256 id) private view returns (string memory) {
        LSSVMPair pair = LSSVMPair(address(uint160(id)));
        uint256 buyPrice;
        uint256 sellPrice;
        {
            (, , , sellPrice, , ) = pair.bondingCurve().getSellInfo(
                pair.spotPrice(),
                pair.delta(),
                1,
                pair.fee(),
                pair.factory().protocolFeeMultiplier()
            );
            (, , , buyPrice, , ) = pair.bondingCurve().getBuyInfo(
                pair.spotPrice(),
                pair.delta(),
                1,
                pair.fee(),
                pair.factory().protocolFeeMultiplier()
            );
        }

        if (pair.poolType() == LSSVMPair.PoolType.TOKEN) {
            uint256 preDecimalSell = sellPrice / (10 ** 18);
            uint256 postDecimalSell = (sellPrice / (10 ** 15)) -
                (preDecimalSell * 1000);
            return
                string(
                    abi.encodePacked(
                        '<text x="80" y="75" fill="#9dc1ef" class="s">Buy Price</text><text x="80" y="90" fill="#fff" class="b">',
                        preDecimalSell.toString(),
                        ".",
                        getLeadingZeroes(sellPrice),
                        postDecimalSell.toString(),
                        " ETH</text>"
                    )
                );
        } else if (pair.poolType() == LSSVMPair.PoolType.NFT) {
            uint256 preDecimalBuy = buyPrice / (10 ** 18);
            uint256 postDecimalBuy = (buyPrice / (10 ** 15)) -
                (preDecimalBuy * 1000);
            return
                string(
                    abi.encodePacked(
                        '<text x="20" y="75" fill="#dc92e4" class="s">Sell Price</text><text x="20" y="90" fill="#fff" class="b">',
                        preDecimalBuy.toString(),
                        ".",
                        getLeadingZeroes(buyPrice),
                        postDecimalBuy.toString(),
                        " ETH</text>"
                    )
                );
        } else {
            uint256 preDecimalSell = sellPrice / (10 ** 18);
            uint256 postDecimalSell = (sellPrice / (10 ** 15)) -
                (preDecimalSell * 1000);
            uint256 preDecimalBuy = buyPrice / (10 ** 18);
            uint256 postDecimalBuy = (buyPrice / (10 ** 15)) -
                (preDecimalBuy * 1000);
            return
                string(
                    abi.encodePacked(
                        '<text x="20" y="75" fill="#dc92e4" class="s">Sell Price</text><text x="20" y="90" fill="#fff" class="b">',
                        preDecimalBuy.toString(),
                        ".",
                        getLeadingZeroes(buyPrice),
                        postDecimalBuy.toString(),
                        " ETH</text>",
                        '<text x="80" y="75" fill="#9dc1ef" class="s">Buy Price</text><text x="80" y="90" fill="#fff" class="b">',
                        preDecimalSell.toString(),
                        ".",
                        getLeadingZeroes(sellPrice),
                        postDecimalSell.toString(),
                        " ETH</text>"
                    )
                );
        }
    }

    function getLeadingZeroes(
        uint256 price
    ) internal pure returns (string memory) {
        if (price < 10 ** 18 && price >= 10 ** 17) {
            return "";
        } else if (price < 10 ** 17 && price >= 10 ** 16) {
            return "0";
        } else if (price < 10 ** 16 && price >= 10 ** 15) {
            return "00";
        }
        return "";
    }

    function getBalance(uint256 id) internal view returns (string memory) {
        uint256 preDecimalBalance = address(uint160(id)).balance / (10 ** 18);
        uint256 postDecimalBalance = (address(uint160(id)).balance /
            (10 ** 16)) - (preDecimalBalance * 100);
        return
            string(
                abi.encodePacked(
                    '<text x="10" y="110" fill="#9292a3" class="s">Balance</text><text x="70" y="110" fill="#fff" class="s">',
                    preDecimalBalance.toString(),
                    ".",
                    postDecimalBalance.toString(),
                    ' ETH</text><text x="100" y="110" fill="#fff" class="s">',
                    ERC721(LSSVMPair(address(uint160(id))).nft())
                        .balanceOf(address(uint160(id)))
                        .toString(),
                    "  ",
                    ERC721(LSSVMPair(address(uint160(id))).nft()).symbol(),
                    "</text>"
                )
            );
    }

    function getSpecial(uint256 id) internal view returns (string memory) {
        return specialStuff[LSSVMPair(address(uint160(id))).nft()];
    }

    function toAsciiString(address x) internal pure returns (string memory) {
        bytes memory s = new bytes(10);
        for (uint i = 0; i < 5; i++) {
            bytes1 b = bytes1(uint8(uint(uint160(x)) / (2 ** (8 * (19 - i)))));
            bytes1 hi = bytes1(uint8(b) / 16);
            bytes1 lo = bytes1(uint8(b) - 16 * uint8(hi));
            s[2 * i] = char(hi);
            s[2 * i + 1] = char(lo);
        }
        return string(abi.encodePacked("0x", s));
    }

    function char(bytes1 b) internal pure returns (bytes1 c) {
        if (uint8(b) < 10) return bytes1(uint8(b) + 0x30);
        else return bytes1(uint8(b) + 0x57);
    }

    function setSpecial(address a, string calldata s) external onlyOwner {
        specialStuff[a] = s;
    }
}
