// SPDX-License-Identifier: SYMM-Core-Business-Source-License-1.1
// This contract is licensed under the SYMM Core Business Source License 1.1
// Copyright (c) 2023 Symmetry Labs AG
// For more information, see https://docs.symm.io/legal-disclaimer/license
pragma solidity >=0.8.18;

import "../libraries/LibQuote.sol";

interface IBitmapViewFacet {
    struct Bitmap {
        uint256 size;
        BitmapElement[] elements;
    }

    struct BitmapElement {
        uint256 offset;
        uint256 bitmap;
    }

    function getQuotesWithBitmap(
        Bitmap calldata bitmap,
        uint256 gasNeededForReturn
    ) external view returns (Quote[] memory quotes);
}

contract BitmapViewFacet is IBitmapViewFacet {
    function getQuotesWithBitmap(
        Bitmap calldata bitmap,
        uint256 gasNeededForReturn
    ) external view returns (Quote[] memory quotes) {
        QuoteStorage.Layout storage qL = QuoteStorage.layout();

        quotes = new Quote[](bitmap.size);
        uint256 quoteIndex = 0;

        for (uint256 i = 0; i < bitmap.elements.length; ++i) {
            uint256 bits = bitmap.elements[i].bitmap;
            uint256 offset = bitmap.elements[i].offset;
            while (bits > 0 && gasleft() > gasNeededForReturn) {
                if ((bits & 1) > 0) {
                    quotes[quoteIndex] = qL.quotes[offset];
                    ++quoteIndex;
                }
                ++offset;
                bits >>= 1;
            }
        }
    }
}
