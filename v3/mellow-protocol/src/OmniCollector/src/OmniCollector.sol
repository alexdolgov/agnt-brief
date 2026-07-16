// SPDX-License-Identifier: BSL-1.1
pragma solidity 0.8.25;

import "./interfaces/IOmniCollector.sol";
import "./interfaces/ICustomCollector.sol";

contract OmniCollector is IOmniCollector {
    struct Header {
        uint256 blockNumber;
        uint256 timestamp;
        uint256 responseSize;
    }

    struct Request {
        address vault;
        address collector;
        bytes data;
    }

    function collect(
        Request[] memory requests,
        address[] memory users
    ) public view returns (Header memory header, bytes memory response) {
        uint256 responseSize = 0xa0;
        uint256 maxSize = requests.length * users.length * responseSize;
        response = new bytes(maxSize);

        uint256 offset = 0;
        for (uint256 j = 0; j < requests.length; j++) {
            ICustomCollector collector = ICustomCollector(
                requests[j].collector
            );
            address vault = requests[j].vault;
            bytes memory data = requests[j].data;
            try collector.balanceOf(vault, users, data) returns (
                address token,
                uint256[] memory tokenBalances
            ) {
                for (uint256 i = 0; i < tokenBalances.length; i++) {
                    address user = users[i];
                    uint256 tokenBalance = tokenBalances[i];
                    if (tokenBalance == 0) continue;
                    assembly {
                        mstore(add(response, add(offset, 0x20)), user)
                        mstore(add(response, add(offset, 0x40)), vault)
                        mstore(add(response, add(offset, 0x60)), token)
                        mstore(add(response, add(offset, 0x80)), tokenBalance)
                        mstore(add(response, add(offset, 0xa0)), j)
                    }
                    offset += responseSize;
                }
            } catch {}
        }
        assembly {
            mstore(response, offset)
        }
        header = Header({
            blockNumber: block.number,
            timestamp: block.timestamp,
            responseSize: offset
        });
    }
}
