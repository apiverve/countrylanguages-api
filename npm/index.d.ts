declare module '@apiverve/countrylanguages' {
  export interface countrylanguagesOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface countrylanguagesResponse {
    status: string;
    error: string | null;
    data: CountryLanguagesData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface CountryLanguagesData {
      country:               null | string;
      name:                  null | string;
      officialName:          null | string;
      officialLanguages:     (null | string)[];
      officialLanguageCount: number | null;
  }

  export default class countrylanguagesWrapper {
    constructor(options: countrylanguagesOptions);

    execute(callback: (error: any, data: countrylanguagesResponse | null) => void): Promise<countrylanguagesResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: countrylanguagesResponse | null) => void): Promise<countrylanguagesResponse>;
    execute(query?: Record<string, any>): Promise<countrylanguagesResponse>;
  }
}
