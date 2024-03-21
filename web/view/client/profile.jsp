

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page = "./header/mainHeader.jsp" flush = "true" />

<!-- Profile -->

<section style="background-color: #eee;">
    <div class="container py-5">
        <div class="row">
            <div class="col-lg-4">
                <div class="card mb-4">
                    <div class="card-body text-center">
                        <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxQUExYSFBQXFhYYGB4bGRgYGRgcHBYYHhgaGBsgHhofHykhGR4pIB4bIzQjKC4sLy8yHyI1OjguOSkvLywBCgoKDg0OHBAQHDcmICM3LjA3NDksLjcsOTAwOS4wLiwuNzcsLi4vLDcuMC4sNy8uMC4uLjAuLi45Li4uLi4sLv/AABEIANEA8QMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAABAUGAwcCAf/EAEUQAAICAQMCBAQDBAgEBAYDAAECAxEABBIhBTETIkFRBjJhcSNCgRRSYpEHM1NygpKhsRXB0fBDorLhVKPCw9LxFjRE/8QAGQEBAAMBAQAAAAAAAAAAAAAAAAIDBAUB/8QAIREBAAICAgIDAQEAAAAAAAAAAAECAxESMSFBBBNhMlL/2gAMAwEAAhEDEQA/APccYxgMYxgMYxgMYxgMYxgMYxgMZTHqEpVpUjVo1Jobm3yKpolQFoXRKizuG3lb449S1waSJQ/4ZcBqHEpbhFDV5lB5avSgTRIIX+MZF0+sjcsEYOVNNtNhWHdSRwGHt3wJWMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwKzqZdlIiJO1h4iqQrMu3cVVjwrG15scXypIYZnoWsJlkeTUyIyONkAO4SRGJW+Rg0rvuLjg2Cosd90rTdeZY3l8reNqGEb2AioBQZq8xAjj38DmwLF2JPw3rIHWOVEIeQONzhQzMptr2kr5r3cE+3pWBn+r6LVJFEgWTyadFXYCwVxGA3bjduB79+MsNb4UBR4YW8T5FkkU+NIxpQqNNyt2NzkVyAL5KfPTvit40CNGHNnzbttkmzfB98ttV1fQyHc+1yAQN0bHj7FawOiPqfBkSfYrt5ImicsTuFCyUWnBs2BVUfQ5G+F+oRRaSKM+RoqheNVJYzAW21VBL7uX4HYkmqNcNV1hYYDOkADyyeHAqooZgRxf8mb27ZQ/Ds7Qy6iWcCBkhBctZOy2cncVBAHc8WbH0JDbrr5jyNNIB/G8QJ+oAdv8AUj9M4jWzmmJjjPrE6sxB9jKrbR+in9chaTUGSNXKsu5Q21u63yAw9DXce+cp9Uw3iNC5QAtzQtvlW6Nse9AcDk9xYXK9QkHDaeTd67GjZa91ZmUsPptB+na++j6hHJYQncvzKysrrd1aMAwBo0ao1xeUWk180coid0bchdSgYABWVXUhibrelMKuz5RXM3URGamUiOeMExSV71asPzRtQ3L60CKZVYBe4yH03VeLGkm0ruFlTVo3ZlNcWDYP2yZgMYxgRtXqkjUvI6oo7s7BVH3J4Gc/+JReGJfFjMZ7OHUqfThro85hfiPrSh3nemEbukKk0sfhkpK5vsdwcbv3QoFW11SLqgRO7Q6ZZFJ2yWJHalCyCH0bbabnKtRAPYZT9kzMxWOlv1xERMy9T02rR13I6ut1akEX7cev0yRniviahnZmeDUqQB4ci0oILeahuBajVkcAUO5y56P8XywmNJ/EALldr7Wi2sTtAnAtSLVRvPNVVkFZc5juHnCJ6l6ljI2i1IkRXW6YXz3HuD9QeMk5YrMYxgMYxgMYxgMYxgMYyvTqkJmOmDgyqu8qATtUbe7VtB86Hbd0wNVgWGZH4x10u+PTRtsWRTuYfM1sEChvyjvZHPIoj1t9N1yOSQIiuVLFBLQ8NpArMVBvcaCt5gNvFXfGVfxckMiB1lHjQ2VVCGZga3LtFtztBFcgqvpYLeh89Y0UMUUELmRApLrLHW5ZFodqIohm+1D2sU+u1cf4KadzGsIJaR6G0sQSxN8sx3GuLN+l5Yazqhn0rI8TeIK2kjaLFeY7q2jvdXxdX2zOa3WINmn0yiWa7DHlUaqMhPYmrr27DtmfLmiI1XtfjxTM7t06NCGto45m/jH5vqA7KtH3VSPt2yBrZWiXc6kL6bhz+pWx257DLaLoJkQLUs7gsWlSk3Egit7MFYKeAoLVtFjvlfrvhh4fxH0+plQAnarQbRXmG/a5au/I47X25qpOTvyutXHPjwtutdQXUppdTBIEZYnUx7trKJRGbVvktdlA2OGJBsUbDVdFZ9Ezyybi0O1u7Wgcso3tyxraCxvdR97ym6dq4NLO0MkIZZAsq8qfDLkqyqpPmXepa67v7dr0mTXu6o/h6eNgp48zttD0F7AgFTZsDjgm610tFo3DJes1nUp/RhLPBHKJmjdgyyBUjKFwxRiqsDtoqdvJ4PmDZF1OlaLUEKHkMqKb8QKF2Bld5E4UWPDUOAWPAoAZo+n6NYo0iT5VFC+Sfck+pJ5J9zmW1kDSuSwbZJNIs227/COyCNq5WFhvlPYFmAPDkGSLpBp3MvjShVKqURVJalZlZiWIFk7E4rjb3N5Z6aVUJdiFVFZmYmgqgGyT6AZVdP0SxSzRRKFjUJ5EWgkpUs4CjgHaYjQ979c+54dQwMhhXwk8+ySTY0xXzCwEbanqFNEkDcABRC7+HoSsClgVLtJKVbuniyvNtP1XfX6ZaZzhkDKGHYgEfYi86YDGMYHn/wDwVDrppZBen0x8QLwd07/jEHn8pbfRHd4/3eaTqc7zSNIyoSx7t6D0HbsBxm0kBOi1Dnu8krE+6iZlT+UaoP0zzubbfyKfvJX/AFzyIiOnszMvmbTg/MmnP3H/AFGddPF3Uqm0iiA7MK9thFVnAEfuQj/GD/yz6Vuf6uM/aQf7VWevHoX9H+rJhbTn/wAAhE9zCVBjv7eZL7nZZsk5q8wX9HwrUT0KuGKx9nlr/wBRze4DGMYDGMYDGMYDGMrPiPWNFpppUresbbL5G8ikseo3EYHTVdQVTsXzyVxGvzfQt+4v8RofrQNZD0aGNPxQHmIkkdlLBnLHdKFogmOyBsPFBQcj/AUKrFJXLGUlmPLMdq8se7EmyScfGCyLtlW6UEhgK8P3tgflPqCP19CEvqfS1nih8LYqpTIrJaFShUDaCNpo8HmuRXOZCefWbpEWOOFI2ZTI7qsa7TV7jyFPBvb613yN0n4lmMLQRcHxQor+sVWEbsi+zgs4F9j9Bmll6VSRwRyETCQSox87K1vvkkUVakM4rgWVAquK74q3ncp0yWrGoYbrwn8P8SUswIJQUpFwpMAFZfMaLjstbfrWWHR3h06TSywskEMXiTO7IW1DGhGqHedyOe3IBICmuQbv4i+F5/CMplM0o4YhCGC7rBj8zMADRK3zyRRFHIxKnhfsuoH7RG3AjNCRbN/htvBkFhaXgj3PAyu9IrMajwtpeZidz5ZfqHxZr+pEkzNptPe1IYbFgenFNJQqyeL7Aen38N6TqMephgj1M5gksSKxfYI+8gKtagleAw5s+maPQ9K0mnDxxSyREMQyzQysyHvtHCnb6jv3uzeT9DqASU0wdpHFGeRdoRb52oRa/wCIfu3voDIWzW86aYxYvrj/AE+9bAZtTJJGjuV/CVkjaQApZNlVIWpGYGyPlHb12fQwYE8GKFjM58SRJJQRFahQZJFUgWFACqCT7VZErQanwtDCUG5/CjRFJPmkKhQGPJA3cs3JADHms5tI0I/Z4QJJq8SWRztUFruSRqbbdEKoB4XaKVSV0Y6xWsRDDe02tuU5ddMhqSAkejxMHHp8yttcHvwAw47jtkNBOZpGhiMSyKm6STbW5d4LLGpJZ9vhr5tooDvtCmM8GrQ7p5h4ZNF4F2mKyACyyeJuUergiu9UCRY/8Ac/Nq9Q33/Z/wDlCMmg+oysKeHGSxslnJssxNsxPqxPtwOwAAAyo1fUPFSSJZPwyCs0xao4UNq/4h48QCwFFkGt1DLYfDkJ/rN8vuJHYofvGKjb9Vz91MK+PDGQBHHG8gQDyh1Maoa/hDPQ7Wb7qKD7HV7H4UE8g7WEEY/TxmTcPqLGStFrkkUstja21lYFWRhXDKeQaIP1BBFggnJar4hkaddku0eKqRxAKfGUTCKdjY3HaN48tbdu42GAEjrYEmocQsrMixmVGJEZkSVZI1ZgrbW8PxQeCQHjJHC4Gi1fUI4yFO4sRe1FZzXuQoO1eO5oemffT9cksYlRtyG+eRRUlWBB5Ugggg8ggjKbpnTfEkmbU1Kyuo2kfh34ccm4IbBI3bRd0EsUWctZamSLTQySudkYtmoe9ABVHcngADkk+5wKb4f1yavphljspIs22+DxJIBft2zCup9IlP1JH/TLz+grVB+nvDRHgzMlHg0VVzftbFjlFqiiMymZgVJHcehr2wPnwW/sov8Av9M/Vjf+yi/zV/8AQc5CaL/4g/q4GdYdhPExb6bxzgbD+j6L8bUv/BCv2IMzH/1D+QzcZk/6PYaimf8AfmNfZY446/zK3881mAxjGAxjGAxjGAyD1fQiaGSEkrvUruHdT6MB6kGj+mTsYHnnwv1JoJ2gnHhtwJFvhTZ2Op9Y25pv50VIHoJFiu4zLdT6eNYGeS1SN2SHZxJuVtjuXqwNy0EHlIUFt24KvLpmo1OlpJVM0H5XQVJGOfmjJ8yjj5CTfZQOMDuvQjpwY4ULQM5ZkUgSRgm2VLIBQmh3BVbAuxt6L1JYwUg07wiyNx009X6ERxx+cfdly30HU4pr8KRWI+ZezJf7yGmQ/QgZIedQQpYAte0EgFq7174GP1XWFQ3NJqhzw3hTxop+gWMAgfx7q9TkzRdeaP8A/sMjRBgonA21uCmMvyVIYMAXXaNxHlo2JR6osytEUIJcxOGq0JVip+vmWh298yUyeJ0jYx23viBHGxV1TRRkfZQtfYYEn4kgh1kyyQvyIyJHCttJDKYxyBuNFzYvjbfBW+vTtCkCVY92c8XX+wGZfp2segkmpeAsSwVYgykMdwIkA+WzQJI/L+8t2jaxPDMGolaXc+0Mq7d/AcLa+X0I5rjv6nOfmi03l0MPGKwl9B1QfXRbZWeEGQximCLMY3JCsTte1MrCgaBbmqGWL9T8GeXdZEkrJKD+XyARMv8ADVX9WHHIzO6zqchC7AsJhYSBh5gNoPpx5fmBA5YWPLdZZt1GPWRCTYQWRHmgBuSIkApLGBy/vYouvHzoEzXh3x1ZlzViLbhsOhzrPpImPmWSIA3+YFaa/wDXHRpWAMEhJkiobj3lj5Ecl+pIFN28wb0onE/B/WRppBp3a4W4RwbXy8dx6gCiPUc91YDbdX0+/Y8bIsy34TMeHsWyGuWRgATXYqrd1GWqVtmchm3+JPf9bQj+mnQna3evOS73x5WUH5cjavXmSMiSz5gjwKgUmQ0BG9s24ElexVWUgklCb++o6d1Rn1DAJXMcTNcjHgKZNoKr9gCfoAQwVek0LO5VWnELFnChtot238FUElMSzUHNXRrhRYCeCAbRsCoaZU2hUN2Q78RxHm6YgnmgTlLJrFn8unjaMUu6VpJGEfAYhFut/wBRVDk1YBmaXRKgQcsUUKrNRKgADy8AIOOQoA+mUZPkVp47lfjwWv56hYwdeVA3hxvNI7FncDZHuIAHnYAsgUKoZFbgC+byn6nBLqJY3mYeGhLCNb2K3Yd+ZG5Nua44AW2uZPMqDcxocc/cgD/U5x6hqfDCt6bwrfY2L/Q1/rmS/wAi9/DVXBSvl+/0e6bw9T1ADs0kb/qVcH/QLmZ6lrCZHbfEoZmI3H3JPvmu+FH46hJ6rNt/y6aJv92OY5o67RKf1Uf8s34v4hhyf3KKZif/APRB/lB/+5nfTe5aJgPVV21/5mx5v7Af5kz6Gm8SovD2mVlj422BIwQkEc8Alv0yaD0v4P03h6OAEUzJ4jD2eQmVx+jMRl1n4B6Z+4DGMYDGMYDGMYDGMidS05kikjVtrOjKG/dJUgH9LvAyTyDiQN+DI7GBJNS8PiF2Z2KiJOVbllDluPRMm9L1BeNwQ4VZisYlJaRVEab1diSWIkLgGyCoUgkUS1EZldSqtp9RBEAVYI6mKVqobX5G6Hg2DxyOaz400PhcW0jyyck1bvsA7AAALGg49k9T3CQ2jikZTKoO2yG/MnHO1h5lP1BGcIenTSadWJ8RXAcQysd8QNFQk/LF1Xvv37msWini10OmJayCAPcf6Y+GJL06AcqhdENk7o45Gjja/wA25FVr9bsXged6zqbpqHDMysoj37gVckEqCwPtUXPINEgkcnXdCQpp9PxTiNWIP5XcF2/W3I/nkb4z0CaieCJaLKG8cjkJAWRirezuRSc38xogMVs5xI5HhlAx3t5kL7tu3ygCRACS4Nk1xXreBmviaGInVDaQ8KGdCPlI2xvMh4q/OW5/tga8q1nNXIXgLgG0qRf8DWR9+GH6+vreS6HUFNSsrhnk02qXuCbMce9hSDxCG8JC52gbQqoANzUWij1ExVY08OMDgEjzcD5mF0KIP685XeYjzK/D53CdqZuAdwCmq5UXyDXPFEcf/vLXpEUckSrNHNFJG7iGVCFbw2beoDWLHJXaRyF5FHMxBqAm91BiC0thQJX9Ejju9h5snmrA54q402qWN2Dy/KLkCtJJs/vzOaXn8qgE+l5ntlmJ3VfNIt2/OsdFd2v8SVuD4u2KN7Hy7tjLvr03bh9M4ww6h2QahZhHGaAj/c8pJWja7iWPextUdr3Wej1uolOzTwqfdpDs4Prstm9/mKnI/XYNbpU3vPCzyGlARuAoJJC7qVVHcnuSouyMnW2afUKZrhj3LUdB0yTTGdUaJICIo02lS1ISWkB5b+s8t9vMed2VPxr1Dxp4tNExsE2wIKjjzt9So4/vED3zU/DPTmghCvIZGanZiAPMUUNwPTcCR7Agelnz/QOv7e+0FVIO2xRq2NH0JAocfTLclprSZ9q8dYtfXpo9JpljRY0G1VFAf+/cn1JPJPOdcZG1+vSFdzn7Ad2+2crt0+jqWjE0TxEldw4YflIIINetEA165mOoDUpp3jljG2Pa3ih1K7Aw3cXv4TceQKr175+n4i1Ex/ARVT99ux+xo7/0AH1yx6GJZZkhmnZlkDKQiRoLCF/VWO2lYVfqM048F2e+ai1+Cp9+l1zDuZnJ+500JzJakLfMjr9ia/2Obn4e6Iuikk029minUGMv8wdVKuhfsx2bSvFkI93tJzIayFkZl3lSpIIoHkGj6ZurGoiGG07mZV1x/wBvL/M//jl/8HacPq4aLEIsktn1IURAHgf2t8/u/TKcSG68U37bP/bNp/R7pCRJqTe2QKkZP5kQsWcfRmah6EICOCCZPG0xjGAxjGAxjGAxjGAxjGBXazp5ZxKkjRuBtJAUh17gOpHIB5BFEWeaJB4L0NS3iySSPL2V923w1PdUVaAUmibstS7idq1cYwKmTocT/wBaZJR2KySOUYH0aIEI4+6nIHxHrHG6KNXKxojusZZWcSSGNFDICyINrs5UbgAK75pcxjtDMDqJdsgDSbJGXcvhGTy+GCPlICcgeegfNa4ErpTh41Ecaxi28kdbQwYhiKA3AkE7iLIN51WZf2hUWSiiPGWUA3LI0bUBzyix21jgOuZ7XdWlZhBCD4snaJDTKvbdNIP6pRydiEHy8seUF70boo0gQkiWZvItAJGvlZiFABKLSn3P86wKrTQR6fVSQpUkuoLCZ3ozGMQtJ4rFQFESkrEBt5ZhbE8ZmOi9QmfTRFXTTxLGheaQLbMwDGt3l7n25v0y+/4osS6mUlUja4vEZtxnl3USspA3Ko3cKAtvQG4Nme6XLp/2fSNKxcJHtWIKSDJyO/yhq42mj/Mg5vkRuIaPjzraNrtCm5ZV1BlkaXerIFJI2/Miqdtg2tkj5eORknR9GM4kjCNFEP3yN8j7BW4WaAJc37ni++XsfjFg6wRaZCKWSa/Ebu21NOgDP6mg3J9M+NZFO+5K1QQghneEqOeDsjRQ/wDmkGVxivP4snLSP12h6npZook1OjZJmUlWRFjDbfmdJrUBCAW78qCeQCcz8+wap4kE1xowcTeGSpLgBQYxXIF83xtPrkzq3UWRRCu+Ukj9neQKrxyKQ1sATwhAIJryswoleeWi6CU0jTC98kUkin95EKqhHPY7nkFdlZV/Lm1jen9BN6eA7t1xR+b97yDn9c8++LtI+m1S6iiUaRiD3B3AEi/T5WH+IZrPgjVXAsZN0u5D/AzuAP8ACRXHoVyR8WdGOphKK+0iyOLBNcfYj0/7qNq8omEq24ztnNT1eJY/EDBrHlUHkn7en19s8b/pB+KHkdolY3/4hHoPRB7D3/l75ppZ9iuzVaAlqPHlBP8ALi88gmlLMWJssSSfck2cz4MURM7ac2WZiNPWfgHXibShX8zIdrA92AA236VtKqAe+09+c0uk2q8fAjVZomJ4AC+Itm+yCrs+gs/XMd/RfpysLPz5mJFX6eXsBye/BN+wHc6xIPFBgQsTKxjAINqWXmw1GgLbmv5Vmpketa3RpKhR1sHnuQQRyCrAgqwPIYEEHkZlepfBUjyF11CkHn8WEMwP95HQEf4b9yc037O7/PIVH7kZr+b/ADk/UbftnDTHZOYVZmXww7BmLFCXKr5mtqan7k/JxXOBS9P+BoxRnfxv4AnhxH+8lszD+EsVPqM1qIAAAKA4AHoM+8YDGMYDGMYDGMYDGMYDGVev65DE4jkemIBoK7bVJIDPtB8NSQaZqBo+xybp51dVdGV0YWGUghgexBHBH1zzY75W6jqiqW48qmmcsqrfFgFiLIsc9uauwQOfXtb4SB7IW2LFRbbViklIH1OwD7E1Roiu0HTAu6bVhTsP4YchlTdTu/avEZ2YE+gAC8ElvR+dTd9WIxHCHiV9z+Odkcg2SIAF2sZAGKsCVCGgQxyv6p0HXaggs8MIU2AGeTcbPmbyoAQKoeYKST5vLVo3xjAGK7ZOL7BeaNcebtlhp+uwPVSrfHBNEE+hBwMf07Qarp5dl06TK3zOjO7n7jZvBPHADCgOwAzl174r084iBgZ5gW2xSn8FSfIXYA7ZavaFomyRS8kekXmK+NfhzeW1SDsoMirw3lFeIpHdgvBH5lUDmtrBkP8AhjSzGbUv4rjjxJQDHEOPLFAp2n0O2zQouwsXIfraLIYtNtWRQBJPKyGRR7bmpUPY+HHQXvR7H40MekJRZhLHuHln0xOxz386LZLEG+AymmPlqsuY+iOIQ8XUHkgQAKIljurof1aqSfcsxPck4Gd/YyZN4kZ3c00oadtx2BqEztGoHPbygeg5yVFoW8zmVWC+gR5qPszNKI7/AIQWJ7AXn1q+nzgGYxkRq6sZNQCzVxyYd7Bh5TR3e2ajXaFNNtlkdppr2wq1EvJ6ERqNqqvdUUUPmNnaUCj/AOHF6WYLE4juUxqq+DGa8ihePE5FkXbkDkIM9B6cN8ChkCqy0E9Ah4Uf5azK/DvTmlYmQ7lVt0vNh5O4S+zVdk9iT6ijmwPUIv7WP/Ov/XAzfQdB4ZOnVtkkJJjJFhoWCggiwSppSaI5C+2aTR6kSIHqr4I77WB2sp+oYEH7ZEn6tplO8yRlgKtaZq715bNZmdd8URiUtpjtdiN4YjZJXFmO73VxuBU8C9wAGB8/Fn9HEepFJI8QNhwCPMvdVsqaW7/n9wcOv9CRjZWJMyljahwtCjVmgbuuxHY9s9CX47jNDaN9LuXeBtc/MvIuvY15uD2OQuvfFW/aEcwgDzWwUsfTkcgfrzeB96TSwdO8GN1EjlSUAq4QtVS9ioJrfd9uOSchdA6fJqZ31CmlWTduBGxpjv3A92fZ+GQAVF8Ekih10fQ9RqGEjLtRiNzSlldl9dqVZvkeYr3sWM2Wr6hFAFj43kfhwxgb3AoUiewsWeFW7JA5wKrUrJE4jJR2ZGdCAyAbSqkNy1fOpBH1445++l6RbPjDxZJCC7Ne0tVDbGSVRQOABz6kklifiO2d3dlaU0GCtaxAC1jHvVkljySx7AKB0M5UqEG6VjUa+hNcs3sig2T9VA8zKCFj0yg0yL8qSAKPRAYo3oewtrr0v2yzyHodNsTbZY2SzHuzE2xPtz6DgCgKAGTMBjGMBjGMBjGMD8ym651nwdqKgd2DN5m2IqKVDMzUa+YUK5+gBIldY1ohieSxuAOwG/M9HaoA5JJ9BnkOu1LauQbZZSqCnldmtidpYCM+RCSFNBQFocXwK72nqO06RHc9Jeo+LX8ecBYwzuHBBLb18NI+AQpFbe1e3fvmi+BfiKFp5Id4QyAMIrG3xrYybfZmBRtvF0zVe4mj0HXZNOBHpwoF0F2r+I1clmrcwHcuST9yRmjh1Wl6kPB1MSmReFkArzeuxrtD/DZB7G7rI1x6nl7Stk3HH0t/iRBJJpoGDGN3cyKt2yCNkpq5Ee6RQx7cgE0TeX611yWbxIr/AAv3BRPlAobvzX3+9ZR9Z6xq+jzoXPjwC1898wsy+ZT+VkIUMgseYEBd4r53mVxHpzbtyXADRooFbno1xwABTEgDsCRZyjW5Q4zvUO/S+njVO8hMiRDavlLIZSAWBsEEL5/1/wBrHUfCsRFxs6OOzFi5/m1k/wA6+hy26ZoUgiSFL2oKF9z7kn1JNk/fJOc2+a1rbiXQphrFdTDJ9M6hJpNZF+0MdhtSRwGLUEJoUR83f1odznrakEWOQf8AXPOfibQCWEkiygJ57Fa8wP6f7ZYf0a9Vd4jA7FjHe0nkhQQApPc8FSD9c2YMvONT2yZ8XCdwq+ofCTRSvFEpeCkbZzuS7FrXLeZCTXItT3smbpkVX8PUo8Uw+XURna7jsN9f1h9N1NdehzY6hdsqPz5gYyOK7Fwf/KR/iyrEqSeL4ihxJOIkU+ygAke1ec2M0KFfrunaiQNGmrR1ZfMjKokNWQKIJB+p/wBKzrHovHjjmi2ozR+HJMzFmijTyusSmwpYg2eO1ndQGT9H0t42Ig1DbFbaYpR4irwGpTYZeCO5OQen6YGTU6FyQjHxFANEoSN6g+i1sBrnzNgW3Q5o9gjhjcRKPK5ACtzyQSdzEmzdc85x6l0LTU0joVHdiu79TtF/6DLZvInlW9o4UUOw4AugMxnXPiHUAlQVhA77SjsPe25C/wAgfrgRNZpOlKN3P0O0Dn/Eo/3zP6liCSsiLH+UGPzV/no/oMn6DpM2qbxYlZg3/jSMVUjvxIQZHHtstfSxmt6N8GwxeeSppPdh5ARyKQk2eAdzFiD2I7YHnAG/+sMxib87hEVgf3FuMyKfqaN8E5oujaqDTyoyRFiWI/FVUK33KFWMYNX3CsRxuIuvS2UEUeQcwnxz0KKKISxARsZI18McK5Mim1XsrLRc1wQGsHggNxDMGFj7EHgg+oI9DmZnmKafUakf1kjyeaiaRGeOIe4UKqsVHFlz+Y5w+GdWw1bREmn08LsPaUIqk/cr3/uj2yzeKWFXjEXioZGaNg6rtMjltr3yAGYgFQ3FcWOQoejwBZolSMoHgbdu+c7ZV8IyXzvbfKxvmy185pOhR7i8/wC8Skf0iRiAe9edt0l9yGQH5RlXDCYfFmchpaLMQKAEYZlVfXaOe/csx4uhouk6YRwxRDskaKP8Kgf8sCZjGMBjGMBjGMBjGMDHf0magx6ZJF+ZZGK2aH9RMDz6eW6+tel5glAjiWIHstu3rZ5Y/wB5iT/P9R671npUepheGRQysCOfymiAR7Ee4zyVVYhCVp/VfRZBw5b+6bFe+RiPO0t+NOUaGyo8rEeY/wBjH3Cg/vHv/r7Z0Seq2cIvCAd3b/oD6/7ngfDAVsF7L8x/NK/qAfb3P6DOiqQaHzkVx2jX2Ht/y+pI3SRbDwo+qaOTRzkeMqmmHJU0VVx9eSrD1th65T9B6HGIIlliAmiHhSHzBt6eQmxRpqDA+oYH1yB0rqBhkWVD5IzbH+0sUR9iOB+h7bb2HVWXdHq1/q5gqyD91zxEx7VZuI+pPhj0OUfIpM13HpfgtEW1Ptx8ZVZYr8xHlBs2B35Pc/652yt6/pPEiJBIZPOpHBBXng+nb+YGc36r4ekXUScnwkYgDlnYKAAB7sRwPfOdrfTfvXbh8UdQ2p4QPLC2+i/+/wDteZD4G6qzajUTRsDGjxhPYsAdx+x7X6ivbMj1aHqOtcs0bqjOVCkhRd1yLtqrvRAo1Wbf4H+Hf2dPBZkErm3Yt5OCaIvkAA0eO+dHDh4dsGbLz6ewdY1BWASMKKtGxHevxEsX6+ozLdD1gSPxnNiFSAD+aeW5GH6KVH25yV8f9UKxpAi3LIVKk2FAunJHc0u7g+49SCKfo3RJdSsaqfD0sfIc8tNIWtmUdj5rO48XtoEA3eoW/SOvxwQs8z28kpIUVbEhR9hZvj+WR9WNZqpRNFA0O0AI0rmK+T34MgPJ4KVR9ec1XTOiQw8og3Vy7cuf8R5A+goD0AyzwMX/APxTUSm5tSAPUKGdv0dztH+Q5adP+EdNGQxQyuKppjvojsQnCI31VRmgxgMZjOn9fhbcTPNG4lkVx867lkZdu0htoFVS7e2fes+I2X5dRGw9l07hv8zTbR/lP2wNNrNWsSGSQ7VH3JJJoAAcsxNAKLJJAFk5jpy2tnCMKVeStioYr81kcGV+ASCQtUvZy1QdbLqJFClnY8K7EE83eygEXgm2VVsdy1cXvVkXR6XwEa55+C3rX52+iqpofUj1JOBC+HtWraufVMajVHYmjwoYKoocn89V3rjNS2oc7XlUIPmWK7a/ymRh5RX7osAgHcazPfDvTQE09gVLKH213hhjcw//ADNkgP2y6kcsxJ9TgRdXrYQ3hyyIpk42lgCwY7eAfcmh9eMuOiawyRjfXiJ5JQPSRQL49AwIdfdWU+uYimfSrKqNINSHeUAAs4kicIh9gCUT6beeNxzVaSMpPDZ80kLCQfvGMoVevStzKT671B7DAv8AGMYDGMYDGMYDGMYDPOvi7oZgd50H4EhLSV3gcm3Y+8bG2J/KxJNq3k9Fz8I9MDxwx7eas9lHoo/7/n/txK3aA/32/nx9u/3Nj96tP1/4VkhJfTKXgPeJeXh9/DHd4/4B5l7LYpVz+wFRtI2nmx6/9/8AfAohHJHzV5FPlB/M/Nk/bk+/f1sZbdI6t4IMUy+KmoNPGfUEUxr6L3/QX2OVrEC3bhU7D7dv1uv1r92zyBZTvIBmk4VfRF70T7Dux9Tx7YGu1LiFfxX3wnhNQeVKngLKfyOO24+VuOQTtGa6z1Nmk/ZrXl90TiipCxyMAa4tWCH60fY536R1CSB9kZ33zNu5V7FUR2s+nsPpnz1PoEcpgm0dxxPqIkkRSo/ZiZVBKWK2MNygURbKAKJC5/oiLcoaPvma8ZcyzbVYKRR5QkWRRFXdE3R7+mWnSOrLA3iGJndhtUcnaTz2VWJPAHH29c0K/Asd2Z57sXRjAIHptKED7ij9cs+n/DOmhcSRodw7bpJHC/UBmIU9+R7nNDOzvRvhuTUsNVrGYg2FiZdjFNwoODyqmgdnHFXVsp3KIAAAKA4AHoM+8YDGMYDGMYGF6zHBFM8c0THeTLE8ZCmmNyKTu85WQs9EEASrXY5UanwWISGFnZjQ8Q72Y9wBH8g97I472KvPQuqdNjnTw5F3C7B5BVvRlYcqeTyPcj1yH034agiWiolY/nlVGavbhQAOOwAwKfQLFohvkPiahhWxOdl/lB9PSyeT6Disp9JBJrdQS55blyO0cIPCqfQ80D3sk9hxdatY9LLJHDHcsmwxACypferBAeFUbC3sN3oq8Xfw/wBJEEdGjI3Mje59gf3R2H6nuTgfHVSI2gk2+RGZH2jhEZDRIH5QyoPpdmgCRHXa1tG25RyCQwse6kinA45HuM0OZ7qMju/hq20tJ4II5MabBNIxviyFVV4NWpN2QAj/AA90keETHJJH+LKPIV28TOOEZWVT6EgAmrNk5daPpqRsXBZnbgu7FmIHoL4RfXaoAvmrzpodGkKCOMEKCx5ZmNsxdiWYkkkknk5LwGMYwGMYwGMYwGMYwGMYwGZjr/wqspaWEiOU8sDfhyn+ID5W9N459w1ADT4wPIdXpWSQRyoUdbKo1U1fmU9nHI5Ha+aPGRmBWz3kfgeyj2H0H+p7+pz1vX6COZPDkQOvej6H0IPdSPQjkZlNf8GOpuF96/uSfMPtJXm+gYX7tgYzwv8AwlP1kb/cfc+5/wBecn9E1T+IqRABZHWNF/e824v/AIQC49aQn1ztJ8O6g/hiCTk+b5eR9X3ba96N/e+dj8NfDf7OfFkIaUrtG35Il4sLYBN0LY12FAc2GkxjGAxjGAxjGAxjGAxjGBGGlTxPF2jft2bvXbZah7C+frx7DJOMYDK+Xp6mVJQWVl7gfK/lZRYPYjd3FE0LsAVYYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwGMYwP/2Q==" alt="avatar"
                             class="rounded-circle img-fluid" style="width: 150px;">
                        <h5 class="my-3">${username }</h5>
                        <p class="text-muted mb-1">Full Stack Developer</p>
                        <p class="text-muted mb-4">Hà Nôi, Việt Nam</p>
                        <div class="d-flex justify-content-center mb-2">
                            <button type="button" class="btn btn-primary">Follow</button>
                            <a href="${pageContext.request.contextPath}/view/client/changepass.jsp"> <button type="button" class="btn btn-primary">Change PassWord</button> </a>
                        </div>
                    </div>
                </div>
                <div class="card mb-4 mb-lg-0">
                    <div class="card-body p-0">
                        <ul class="list-group list-group-flush rounded-3">
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <i class="fas fa-globe fa-lg text-warning"></i>
                                <p class="mb-0">https://mdbootstrap.com</p>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <i class="fab fa-github fa-lg" style="color: #333333;"></i>
                                <p class="mb-0">mdbootstrap</p>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i>
                                <p class="mb-0">@mdbootstrap</p>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <i class="fab fa-instagram fa-lg" style="color: #ac2bac;"></i>
                                <p class="mb-0">mdbootstrap</p>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i>
                                <p class="mb-0">mdbootstrap</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Full Name</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${sessionScope.info.name}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${sessionScope.info.email}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Phone</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${sessionScope.info.phone}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Mobile</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${sessionScope.info.phone}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Address</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">Hà Nội, Việt Nam</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="card mb-4 mb-md-0">
                            <div class="card-body">
                                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                                </p>
                                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                                <div class="progress rounded" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                                <div class="progress rounded" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                                <div class="progress rounded" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                                <div class="progress rounded" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                                <div class="progress rounded mb-2" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card mb-4 mb-md-0">
                            <div class="card-body">
                                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status
                                </p>
                                <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                                <div class="progress rounded" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>
                                <div class="progress rounded" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                                <div class="progress rounded" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>
                                <div class="progress rounded" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>
                                <div class="progress rounded mb-2" style="height: 5px;">
                                    <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"
                                         aria-valuemin="0" aria-valuemax="100"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page = "./footer/footer.jsp" flush = "true" />